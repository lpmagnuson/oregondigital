# TODO: Pull this data from an actual dynamic map of some sort!

# Legend for this data:
#
#     { group: { type: attribute } }
#
# - Groups are view-specific elements used solely to categorize similar fields
# - Types are view-specific elements that let the user choose what specific
#   data to fill out within a group
# - Each group can have any number of type-to-attribute maps
# - Each type maps directly to an attribute on the datastream
# - When a user enters data for a given group and type, the attribute lets
#   us know how to store the data
# - There is no check right now, but attributes should be unique - i.e., there
#   shouldn't be two different ways to edit the same field on a single form,
#   and likewise we shouldn't show the data twice on a show view
# - ORDER MATTERS - we're relying on the hash being ordered in order to let the
#   UI group things in a logical way as well as showing types in the given order
INGEST_MAP = {
  title: {
    title: "descMetadata.title",
    alternative: "descMetadata.alternative",
    captionTitle: "descMetadata.captionTitle",
    tribalTitle: "descMetadata.tribalTitle",
  },

  creator: {
    creator: "descMetadata.creator",
    author: "descMetadata.author",
    contributor: "descMetadata.contributor",
    editor: "descMetadata.editor",
    photographer: "descMetadata.photographer",
    illustrator: "descMetadata.illustrator",
    artist: "descMetadata.artist",
    printMaker: "descMetadata.printMaker",
    cartographer: "descMetadata.cartographer",
    composer: "descMetadata.composer",
    lyricist: "descMetadata.lyricist",
    arranger: "descMetadata.arranger",
    interviewee: "descMetadata.interviewee",
    interviewer: "descMetadata.interviewer",
    transcriber: "descMetadata.transcriber",
    scribe: "descMetadata.scribe",
    creatorDisplay: "descMetadata.creatorDisplay",
    donor: "descMetadata.donor",
  },

  description: {
    description: "descMetadata.description",
    abstract: "descMetadata.abstract",
    view: "descMetadata.view",
    inscription: "descMetadata.inscription",
    firstLine: "descMetadata.firstLine",
    firstLineChorus: "descMetadata.firstLineChorus",
    culturalContext: "descMetadata.culturalContext",
    inscription: "descMetadata.inscription",
    cover: "descMetadata.cover",
    instrumentation: "descMetadata.instrumentation",
    militaryServiceLocation: "descMetadata.militaryServiceLocation",
    militaryHighestRank: "descMetadata.militaryHighestRank",
    militaryOccupation: "descMetadata.militaryOccupation",
    tribalNotes: "descMetadata.tribalNotes",
    temporal: "descMetadata.temporal",
    coverage: "descMetadata.coverage",
    compassDirection: "descMetadata.compassDirection",
    tableOfContents: "descMetadata.tableOfContents",
    contents: "descMetadata.contents",
    coverage: "descMetadata.coverage",
    numberOfPages: "descMetadata.numberOfPages",
    sourceCondition: "descMetadata.sourceCondition",
    descriptionOfManifestation: "descMetadata.descriptionOfManifestation",
    modeOfIssuance: "descMetadata.modeOfIssuance",
    formOfWork: "descMetadata.formOfWork",
    biographicalInformation: "descMetadata.biographicalInformation",
    note: "descMetadata.note",
    canzionerePoems: "descMetadata.canzionerePoems",
  },

  subject: {
    # would like to rename lcsubject to subject if it won't break
    lcsubject: "descMetadata.lcsubject",
    # would like to rename subject to keyword if it won't break
    subject: "descMetadata.subject",
    stateEdition: "descMetadata.stateEdition",
    stylePeriod: "descMetadata.stylePeriod",
    culture: "descMetadata.culture",
    militaryBranch: "descMetadata.militaryBranch",
    sportsTeam: "descMetadata.sportsTeam",
    ethnographicTerm: "descMetadata.ethnographicTerm",
    tribalClasses: "descMetadata.tribalClasses",
    tribalTerms: "descMetadata.TribalTerms",
    person: "descMetadata.person",
    # dwc terms to be added once configuration complete
    # genus: "descMetadata.genus",
    # phylum: "descMetadata.phylum",
    # taxonClass: "descMetadata.taxonClass",
    # commonNames: "descMetadata.commonNames",
  },

  geographic: {
    location: "descMetadata.location",
    streetAddress: "descMetadata.streetAddress",
    rangerDistrict: "descMetadata.rangerDistrict",
    tgn: "descMetadata.tgn",
  },

  date: {
    date: "descMetadata.date",
    created: "descMetadata.created",
    issued: "descMetadata.issued",
    earliestDate: "descMetadata.earliestDate",
    latestDate: "descMetadata.latestDate",
    viewDate: "descMetadata.viewDate",
    awardDate: "descMetadata.awardDate",
  },

  identifier: {
    identifier: "descMetadata.identifier",
    locationCopyShelfLocator: "descMetadata.locationCopyShelfLocator",
    accessionNumber: "descMetadata.accessionNumber",
  },

  right: {
    rights: "descMetadata.rights",
    rightsHolder: "descMetadata.rightsHolder",
    copyrightClaimant: "descMetadata.copyrightClaimant",
  },

  source: {
    source: "descMetadata.source",
    publisher: "descMetadata.publisher",
    placeOfPublication: "descMetadata.placeOfPublication",
    placeOfProduction: "descMetadata.placeOfProduction",
    language: "descMetadata.language",
    repository: "descMetadata.od_repository",
    idCurrentRepository: "descMetadata.idCurrentRepository",
    localCollectionName: "descMetadata.localCollectionName",
    localCollectionID: "descMetadata.localCollectionID",
    seriesName: "descMetadata.seriesName",
    boxNumber: "descMetadata.boxNumber",
    folderNumber: "descMetadata.folderNumber",
    folderName: "descMetadata.folderName",
    citation: "descMetadata.citation",
    containedInJournal: "descMetadata.containedInJournal",
    isVolume: "descMetadata.isVolume",
    hasNumber: "descMetadata.hasNumber",
    provenance: "descMetadata.provenance",
  },

  relation: {
    relation: "descMetadata.relation",
    largerWork: "descMetadata.largerWork",
    hostItem: "descMetadata.hostItem",
    isPartOf: "descMetadata.isPartOf",
    artSeries: "descMetadata.artSeries",
  },

  type: {
    type: "descMetadata.type",
    workType: "descMetadata.workType",
  },

  format: {
    format: "descMetadata.format",
    physicalExtent: "descMetadata.physicalExtent",
    measurements: "descMetadata.measurements",
    support: "descMetadata.support",
    hasPart: "descMetadata.hasPart",
  },

  grouping: {
    set: "descMetadata.set",
    exhibit: "descMetadata.exhibit",
  },

  administrative: {
    locationCopySublocation: "descMetadata.locationCopySublocation",
    institution: "descMetadata.institution",
    conversion: "descMetadata.conversion",
    dateDigitized: "descMetadata.dateDigitized",
    dateSubmitted: "descMetadata.submissionDate",
    modified: "descMetadata.modified",
  },

}

# XXX HACK: we just duplicate and modify the INGEST_MAP data to ensure we're in
# sync.  But long-term, we may want a separate map that just has to be kept
# partially synced or something, so for now this is the quick fix.
#
# We use JSON to dup here because dup is shallow
TEMPLATE_MAP = JSON.load(INGEST_MAP.to_json)
for group, types_map in TEMPLATE_MAP
  for type, property in types_map
    property.gsub!("descMetadata", "templateMetadata")
  end
end
