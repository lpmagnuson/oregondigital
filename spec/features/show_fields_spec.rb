require 'spec_helper'

describe "show fields" do
  let(:asset) {FactoryGirl.create(:generic_asset)}
  let(:stub_setup) {nil}
  before(:each) do
    stub_setup
    visit catalog_path(asset.pid)
  end
  context "when it has a title" do
    let(:asset) do
      FactoryGirl.create(:generic_asset, :title => "Known Title")
    end
    it "should show it" do
      expect(page).to have_content("Known Title")
    end
  end
  context "when it has a field with a subject" do
    let(:subject) {RDF::URI.new("http://id.loc.gov/authorities/subjects/sh85050282")}
    let(:asset) do
      g = FactoryGirl.build(:generic_asset)
      g.descMetadata.subject = subject
      g.save
      g
    end
    it "should not have an RDF label" do
      expect(asset.subject.first.rdf_label.first).to eq subject.to_s
    end
    it "should pretend the subject field is empty" do
      expect(page).not_to have_content("Subject")
    end
    it "should not show URI subjects" do
      expect(page).not_to have_content(subject.to_s)
    end
    context "which has an rdf_label set up" do
      let(:asset) do
        g = FactoryGirl.build(:generic_asset)
        g.descMetadata.subject = subject
        g.descMetadata.subject.first.set_value(RDF::SKOS.prefLabel, "Test Subject")
        g.descMetadata.subject.first.persist!
        g.save
        g
      end
      it "should have an RDF label" do
        expect(asset.subject.first.rdf_label.first).to eq "Test Subject"
      end
      it "should show it" do
        expect(page).to have_content("Test Subject")
      end
    end
  end
  context "when it has data in descMetadata" do
    let(:asset) do
      g = FactoryGirl.build(:generic_asset)
      g.descMetadata.photographer = "Test Photographer"
      g.save
      g
    end
    it "should show it" do
      expect(page).to have_content("Test Photographer")
    end
    context "and a label is configured" do
      let(:stub_setup) do
        I18n.stub(:t).and_call_original
        I18n.stub(:t).with("oregondigital.catalog.show.title", {:default => "Title"}).and_return("Test Title")
      end
      it "should display it" do
        expect(page).to have_content("Test Title")
      end
    end
  end
end