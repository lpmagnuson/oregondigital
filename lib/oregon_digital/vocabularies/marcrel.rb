# This file generated automatically using vocab-fetch from http://id.loc.gov/vocabulary/relators.nt
require 'rdf'
module OregonDigital::Vocabularies
  class MARCREL < ::RDF::StrictVocabulary("http://id.loc.gov/vocabulary/relators/")

    # Property definitions
    property :abr, :label => 'Abridger'
    property :act, :label => 'Actor'
    property :adp, :label => 'Adapter'
    property :rcp, :label => 'Addressee'
    property :anl, :label => 'Analyst'
    property :anm, :label => 'Animator'
    property :ann, :label => 'Annotator'
    property :apl, :label => 'Appellant'
    property :ape, :label => 'Appellee'
    property :app, :label => 'Applicant'
    property :arc, :label => 'Architect'
    property :arr, :label => 'Arranger'
    property :acp, :label => 'Art copyist'
    property :adi, :label => 'Art director'
    property :art, :label => 'Artist'
    property :ard, :label => 'Artistic director'
    property :asg, :label => 'Assignee'
    property :asn, :label => 'Associated name'
    property :att, :label => 'Attributed name'
    property :auc, :label => 'Auctioneer'
    property :aut, :label => 'Author'
    property :aqt, :label => 'Author in quotations or text abstracts'
    property :aft, :label => 'Author of afterword, colophon, etc.'
    property :aud, :label => 'Author of dialog'
    property :aui, :label => 'Author of introduction, etc.'
    property :ato, :label => 'Autographer'
    property :ant, :label => 'Bibliographic antecedent'
    property :bnd, :label => 'Binder'
    property :bdd, :label => 'Binding designer'
    property :blw, :label => 'Blurb writer'
    property :bkd, :label => 'Book designer'
    property :bkp, :label => 'Book producer'
    property :bjd, :label => 'Bookjacket designer'
    property :bpd, :label => 'Bookplate designer'
    property :bsl, :label => 'Bookseller'
    property :brl, :label => 'Braille embosser'
    property :brd, :label => 'Broadcaster'
    property :cll, :label => 'Calligrapher'
    property :ctg, :label => 'Cartographer'
    property :cas, :label => 'Caster'
    property :cns, :label => 'Censor'
    property :chr, :label => 'Choreographer'
    property :cng, :label => 'Cinematographer'
    property :cli, :label => 'Client'
    property :cor, :label => 'Collection registrar'
    property :col, :label => 'Collector'
    property :clt, :label => 'Collotyper'
    property :clr, :label => 'Colorist'
    property :cmm, :label => 'Commentator'
    property :cwt, :label => 'Commentator for written text'
    property :com, :label => 'Compiler'
    property :cpl, :label => 'Complainant'
    property :cpt, :label => 'Complainant-appellant'
    property :cpe, :label => 'Complainant-appellee'
    property :cmp, :label => 'Composer'
    property :cmt, :label => 'Compositor'
    property :ccp, :label => 'Conceptor'
    property :cnd, :label => 'Conductor'
    property :con, :label => 'Conservator'
    property :csl, :label => 'Consultant'
    property :csp, :label => 'Consultant to a project'
    property :cos, :label => 'Contestant'
    property :cot, :label => 'Contestant-appellant'
    property :coe, :label => 'Contestant-appellee'
    property :cts, :label => 'Contestee'
    property :ctt, :label => 'Contestee-appellant'
    property :cte, :label => 'Contestee-appellee'
    property :ctr, :label => 'Contractor'
    property :ctb, :label => 'Contributor'
    property :cpc, :label => 'Copyright claimant'
    property :cph, :label => 'Copyright holder'
    property :crr, :label => 'Corrector'
    property :crp, :label => 'Correspondent'
    property :cst, :label => 'Costume designer'
    property :cou, :label => 'Court governed'
    property :crt, :label => 'Court reporter'
    property :cov, :label => 'Cover designer'
    property :cre, :label => 'Creator'
    property :cur, :label => 'Curator'
    property :dnc, :label => 'Dancer'
    property :dtc, :label => 'Data contributor'
    property :dtm, :label => 'Data manager'
    property :dte, :label => 'Dedicatee'
    property :dto, :label => 'Dedicator'
    property :dfd, :label => 'Defendant'
    property :dft, :label => 'Defendant-appellant'
    property :dfe, :label => 'Defendant-appellee'
    property :dgg, :label => 'Degree granting institution'
    property :dln, :label => 'Delineator'
    property :dpc, :label => 'Depicted'
    property :dpt, :label => 'Depositor'
    property :dsr, :label => 'Designer'
    property :drt, :label => 'Director'
    property :dis, :label => 'Dissertant'
    property :dbp, :label => 'Distribution place'
    property :dst, :label => 'Distributor'
    property :dnr, :label => 'Donor'
    property :drm, :label => 'Draftsman'
    property :dub, :label => 'Dubious author'
    property :edt, :label => 'Editor'
    property :edc, :label => 'Editor of compilation'
    property :edm, :label => 'Editor of moving image work'
    property :elg, :label => 'Electrician'
    property :elt, :label => 'Electrotyper'
    property :enj, :label => 'Enacting jurisdiction'
    property :eng, :label => 'Engineer'
    property :egr, :label => 'Engraver'
    property :etr, :label => 'Etcher'
    property :evp, :label => 'Event place'
    property :exp, :label => 'Expert'
    property :fac, :label => 'Facsimilist'
    property :fld, :label => 'Field director'
    property :fmd, :label => 'Film director'
    property :fds, :label => 'Film distributor'
    property :flm, :label => 'Film editor'
    property :fmp, :label => 'Film producer'
    property :fmk, :label => 'Filmmaker'
    property :fpy, :label => 'First party'
    property :frg, :label => 'Forger'
    property :fmo, :label => 'Former owner'
    property :fnd, :label => 'Funder'
    property :gis, :label => 'Geographic information specialist'
    property :hnr, :label => 'Honoree'
    property :hst, :label => 'Host'
    property :his, :label => 'Host institution'
    property :ilu, :label => 'Illuminator'
    property :ill, :label => 'Illustrator'
    property :ins, :label => 'Inscriber'
    property :itr, :label => 'Instrumentalist'
    property :ive, :label => 'Interviewee'
    property :ivr, :label => 'Interviewer'
    property :inv, :label => 'Inventor'
    property :isb, :label => 'Issuing body'
    property :jud, :label => 'Judge'
    property :jug, :label => 'Jurisdiction governed'
    property :lbr, :label => 'Laboratory'
    property :ldr, :label => 'Laboratory director'
    property :lsa, :label => 'Landscape architect'
    property :led, :label => 'Lead'
    property :len, :label => 'Lender'
    property :lil, :label => 'Libelant'
    property :lit, :label => 'Libelant-appellant'
    property :lie, :label => 'Libelant-appellee'
    property :lel, :label => 'Libelee'
    property :let, :label => 'Libelee-appellant'
    property :lee, :label => 'Libelee-appellee'
    property :lbt, :label => 'Librettist'
    property :lse, :label => 'Licensee'
    property :lso, :label => 'Licensor'
    property :lgd, :label => 'Lighting designer'
    property :ltg, :label => 'Lithographer'
    property :lyr, :label => 'Lyricist'
    property :mfp, :label => 'Manufacture place'
    property :mfr, :label => 'Manufacturer'
    property :mrb, :label => 'Marbler'
    property :mrk, :label => 'Markup editor'
    property :mdc, :label => 'Metadata contact'
    property :mte, :label => 'Metal-engraver'
    property :mod, :label => 'Moderator'
    property :mon, :label => 'Monitor'
    property :mcp, :label => 'Music copyist'
    property :msd, :label => 'Musical director'
    property :mus, :label => 'Musician'
    property :nrt, :label => 'Narrator'
    property :osp, :label => 'Onscreen presenter'
    property :opn, :label => 'Opponent'
    property :orm, :label => 'Organizer of meeting'
    property :org, :label => 'Originator'
    property :oth, :label => 'Other'
    property :own, :label => 'Owner'
    property :pan, :label => 'Panelist'
    property :ppm, :label => 'Papermaker'
    property :pta, :label => 'Patent applicant'
    property :pth, :label => 'Patent holder'
    property :pat, :label => 'Patron'
    property :prf, :label => 'Performer'
    property :pma, :label => 'Permitting agency'
    property :pht, :label => 'Photographer'
    property :ptf, :label => 'Plaintiff'
    property :ptt, :label => 'Plaintiff-appellant'
    property :pte, :label => 'Plaintiff-appellee'
    property :plt, :label => 'Platemaker'
    property :pra, :label => 'Praeses'
    property :pre, :label => 'Presenter'
    property :prt, :label => 'Printer'
    property :pop, :label => 'Printer of plates'
    property :prm, :label => 'Printmaker'
    property :prc, :label => 'Process contact'
    property :pro, :label => 'Producer'
    property :prn, :label => 'Production company'
    property :prs, :label => 'Production designer'
    property :pmn, :label => 'Production manager'
    property :prd, :label => 'Production personnel'
    property :prp, :label => 'Production place'
    property :prg, :label => 'Programmer'
    property :pdr, :label => 'Project director'
    property :pfr, :label => 'Proofreader'
    property :prv, :label => 'Provider'
    property :pup, :label => 'Publication place'
    property :pbl, :label => 'Publisher'
    property :pbd, :label => 'Publishing director'
    property :ppt, :label => 'Puppeteer'
    property :rdd, :label => 'Radio director'
    property :rpc, :label => 'Radio producer'
    property :rce, :label => 'Recording engineer'
    property :rcd, :label => 'Recordist'
    property :red, :label => 'Redaktor'
    property :ren, :label => 'Renderer'
    property :rpt, :label => 'Reporter'
    property :rps, :label => 'Repository'
    property :rth, :label => 'Research team head'
    property :rtm, :label => 'Research team member'
    property :res, :label => 'Researcher'
    property :rsp, :label => 'Respondent'
    property :rst, :label => 'Respondent-appellant'
    property :rse, :label => 'Respondent-appellee'
    property :rpy, :label => 'Responsible party'
    property :rsg, :label => 'Restager'
    property :rsr, :label => 'Restorationist'
    property :rev, :label => 'Reviewer'
    property :rbr, :label => 'Rubricator'
    property :sce, :label => 'Scenarist'
    property :sad, :label => 'Scientific advisor'
    property :aus, :label => 'Screenwriter'
    property :scr, :label => 'Scribe'
    property :scl, :label => 'Sculptor'
    property :spy, :label => 'Second party'
    property :sec, :label => 'Secretary'
    property :sll, :label => 'Seller'
    property :std, :label => 'Set designer'
    property :stg, :label => 'Setting'
    property :sgn, :label => 'Signer'
    property :sng, :label => 'Singer'
    property :sds, :label => 'Sound designer'
    property :spk, :label => 'Speaker'
    property :spn, :label => 'Sponsor'
    property :sgd, :label => 'Stage director'
    property :stm, :label => 'Stage manager'
    property :stn, :label => 'Standards body'
    property :str, :label => 'Stereotyper'
    property :stl, :label => 'Storyteller'
    property :sht, :label => 'Supporting host'
    property :srv, :label => 'Surveyor'
    property :tch, :label => 'Teacher'
    property :tcd, :label => 'Technical director'
    property :tld, :label => 'Television director'
    property :tlp, :label => 'Television producer'
    property :ths, :label => 'Thesis advisor'
    property :trc, :label => 'Transcriber'
    property :trl, :label => 'Translator'
    property :tyd, :label => 'Type designer'
    property :tyg, :label => 'Typographer'
    property :uvp, :label => 'University place'
    property :vdg, :label => 'Videographer'
    property :wit, :label => 'Witness'
    property :wde, :label => 'Wood engraver'
    property :wdc, :label => 'Woodcutter'
    property :wam, :label => 'Writer of accompanying material'
    property :wac, :label => 'Writer of added commentary'
    property :wal, :label => 'Writer of added lyrics'
    property :wat, :label => 'Writer of added text'
    property :abr, :label => 'Abridger'
    property :act, :label => 'Actor'
    property :adp, :label => 'Adapter'
    property :rcp, :label => 'Addressee'
    property :anl, :label => 'Analyst'
    property :anm, :label => 'Animator'
    property :ann, :label => 'Annotator'
    property :apl, :label => 'Appellant'
    property :ape, :label => 'Appellee'
    property :app, :label => 'Applicant'
    property :arc, :label => 'Architect'
    property :arr, :label => 'Arranger'
    property :acp, :label => 'Art copyist'
    property :adi, :label => 'Art director'
    property :art, :label => 'Artist'
    property :ard, :label => 'Artistic director'
    property :asg, :label => 'Assignee'
    property :asn, :label => 'Associated name'
    property :att, :label => 'Attributed name'
    property :auc, :label => 'Auctioneer'
    property :aut, :label => 'Author'
    property :aqt, :label => 'Author in quotations or text abstracts'
    property :aft, :label => 'Author of afterword, colophon, etc.'
    property :aud, :label => 'Author of dialog'
    property :aui, :label => 'Author of introduction, etc.'
    property :ato, :label => 'Autographer'
    property :ant, :label => 'Bibliographic antecedent'
    property :bnd, :label => 'Binder'
    property :bdd, :label => 'Binding designer'
    property :blw, :label => 'Blurb writer'
    property :bkd, :label => 'Book designer'
    property :bkp, :label => 'Book producer'
    property :bjd, :label => 'Bookjacket designer'
    property :bpd, :label => 'Bookplate designer'
    property :bsl, :label => 'Bookseller'
    property :brl, :label => 'Braille embosser'
    property :brd, :label => 'Broadcaster'
    property :cll, :label => 'Calligrapher'
    property :ctg, :label => 'Cartographer'
    property :cas, :label => 'Caster'
    property :cns, :label => 'Censor'
    property :chr, :label => 'Choreographer'
    property :cng, :label => 'Cinematographer'
    property :cli, :label => 'Client'
    property :cor, :label => 'Collection registrar'
    property :col, :label => 'Collector'
    property :clt, :label => 'Collotyper'
    property :clr, :label => 'Colorist'
    property :cmm, :label => 'Commentator'
    property :cwt, :label => 'Commentator for written text'
    property :com, :label => 'Compiler'
    property :cpl, :label => 'Complainant'
    property :cpt, :label => 'Complainant-appellant'
    property :cpe, :label => 'Complainant-appellee'
    property :cmp, :label => 'Composer'
    property :cmt, :label => 'Compositor'
    property :ccp, :label => 'Conceptor'
    property :cnd, :label => 'Conductor'
    property :con, :label => 'Conservator'
    property :csl, :label => 'Consultant'
    property :csp, :label => 'Consultant to a project'
    property :cos, :label => 'Contestant'
    property :cot, :label => 'Contestant-appellant'
    property :coe, :label => 'Contestant-appellee'
    property :cts, :label => 'Contestee'
    property :ctt, :label => 'Contestee-appellant'
    property :cte, :label => 'Contestee-appellee'
    property :ctr, :label => 'Contractor'
    property :ctb, :label => 'Contributor'
    property :cpc, :label => 'Copyright claimant'
    property :cph, :label => 'Copyright holder'
    property :crr, :label => 'Corrector'
    property :crp, :label => 'Correspondent'
    property :cst, :label => 'Costume designer'
    property :cou, :label => 'Court governed'
    property :crt, :label => 'Court reporter'
    property :cov, :label => 'Cover designer'
    property :cre, :label => 'Creator'
    property :cur, :label => 'Curator'
    property :dnc, :label => 'Dancer'
    property :dtc, :label => 'Data contributor'
    property :dtm, :label => 'Data manager'
    property :dte, :label => 'Dedicatee'
    property :dto, :label => 'Dedicator'
    property :dfd, :label => 'Defendant'
    property :dft, :label => 'Defendant-appellant'
    property :dfe, :label => 'Defendant-appellee'
    property :dgg, :label => 'Degree granting institution'
    property :dln, :label => 'Delineator'
    property :dpc, :label => 'Depicted'
    property :dpt, :label => 'Depositor'
    property :dsr, :label => 'Designer'
    property :drt, :label => 'Director'
    property :dis, :label => 'Dissertant'
    property :dbp, :label => 'Distribution place'
    property :dst, :label => 'Distributor'
    property :dnr, :label => 'Donor'
    property :drm, :label => 'Draftsman'
    property :dub, :label => 'Dubious author'
    property :edt, :label => 'Editor'
    property :edc, :label => 'Editor of compilation'
    property :edm, :label => 'Editor of moving image work'
    property :elg, :label => 'Electrician'
    property :elt, :label => 'Electrotyper'
    property :enj, :label => 'Enacting jurisdiction'
    property :eng, :label => 'Engineer'
    property :egr, :label => 'Engraver'
    property :etr, :label => 'Etcher'
    property :evp, :label => 'Event place'
    property :exp, :label => 'Expert'
    property :fac, :label => 'Facsimilist'
    property :fld, :label => 'Field director'
    property :fmd, :label => 'Film director'
    property :fds, :label => 'Film distributor'
    property :flm, :label => 'Film editor'
    property :fmp, :label => 'Film producer'
    property :fmk, :label => 'Filmmaker'
    property :fpy, :label => 'First party'
    property :frg, :label => 'Forger'
    property :fmo, :label => 'Former owner'
    property :fnd, :label => 'Funder'
    property :gis, :label => 'Geographic information specialist'
    property :hnr, :label => 'Honoree'
    property :hst, :label => 'Host'
    property :his, :label => 'Host institution'
    property :ilu, :label => 'Illuminator'
    property :ill, :label => 'Illustrator'
    property :ins, :label => 'Inscriber'
    property :itr, :label => 'Instrumentalist'
    property :ive, :label => 'Interviewee'
    property :ivr, :label => 'Interviewer'
    property :inv, :label => 'Inventor'
    property :isb, :label => 'Issuing body'
    property :jud, :label => 'Judge'
    property :jug, :label => 'Jurisdiction governed'
    property :lbr, :label => 'Laboratory'
    property :ldr, :label => 'Laboratory director'
    property :lsa, :label => 'Landscape architect'
    property :led, :label => 'Lead'
    property :len, :label => 'Lender'
    property :lil, :label => 'Libelant'
    property :lit, :label => 'Libelant-appellant'
    property :lie, :label => 'Libelant-appellee'
    property :lel, :label => 'Libelee'
    property :let, :label => 'Libelee-appellant'
    property :lee, :label => 'Libelee-appellee'
    property :lbt, :label => 'Librettist'
    property :lse, :label => 'Licensee'
    property :lso, :label => 'Licensor'
    property :lgd, :label => 'Lighting designer'
    property :ltg, :label => 'Lithographer'
    property :lyr, :label => 'Lyricist'
    property :mfp, :label => 'Manufacture place'
    property :mfr, :label => 'Manufacturer'
    property :mrb, :label => 'Marbler'
    property :mrk, :label => 'Markup editor'
    property :mdc, :label => 'Metadata contact'
    property :mte, :label => 'Metal-engraver'
    property :mod, :label => 'Moderator'
    property :mon, :label => 'Monitor'
    property :mcp, :label => 'Music copyist'
    property :msd, :label => 'Musical director'
    property :mus, :label => 'Musician'
    property :nrt, :label => 'Narrator'
    property :osp, :label => 'Onscreen presenter'
    property :opn, :label => 'Opponent'
    property :orm, :label => 'Organizer of meeting'
    property :org, :label => 'Originator'
    property :oth, :label => 'Other'
    property :own, :label => 'Owner'
    property :pan, :label => 'Panelist'
    property :ppm, :label => 'Papermaker'
    property :pta, :label => 'Patent applicant'
    property :pth, :label => 'Patent holder'
    property :pat, :label => 'Patron'
    property :prf, :label => 'Performer'
    property :pma, :label => 'Permitting agency'
    property :pht, :label => 'Photographer'
    property :ptf, :label => 'Plaintiff'
    property :ptt, :label => 'Plaintiff-appellant'
    property :pte, :label => 'Plaintiff-appellee'
    property :plt, :label => 'Platemaker'
    property :pra, :label => 'Praeses'
    property :pre, :label => 'Presenter'
    property :prt, :label => 'Printer'
    property :pop, :label => 'Printer of plates'
    property :prm, :label => 'Printmaker'
    property :prc, :label => 'Process contact'
    property :pro, :label => 'Producer'
    property :prn, :label => 'Production company'
    property :prs, :label => 'Production designer'
    property :pmn, :label => 'Production manager'
    property :prd, :label => 'Production personnel'
    property :prp, :label => 'Production place'
    property :prg, :label => 'Programmer'
    property :pdr, :label => 'Project director'
    property :pfr, :label => 'Proofreader'
    property :prv, :label => 'Provider'
    property :pup, :label => 'Publication place'
    property :pbl, :label => 'Publisher'
    property :pbd, :label => 'Publishing director'
    property :ppt, :label => 'Puppeteer'
    property :rdd, :label => 'Radio director'
    property :rpc, :label => 'Radio producer'
    property :rce, :label => 'Recording engineer'
    property :rcd, :label => 'Recordist'
    property :red, :label => 'Redaktor'
    property :ren, :label => 'Renderer'
    property :rpt, :label => 'Reporter'
    property :rps, :label => 'Repository'
    property :rth, :label => 'Research team head'
    property :rtm, :label => 'Research team member'
    property :res, :label => 'Researcher'
    property :rsp, :label => 'Respondent'
    property :rst, :label => 'Respondent-appellant'
    property :rse, :label => 'Respondent-appellee'
    property :rpy, :label => 'Responsible party'
    property :rsg, :label => 'Restager'
    property :rsr, :label => 'Restorationist'
    property :rev, :label => 'Reviewer'
    property :rbr, :label => 'Rubricator'
    property :sce, :label => 'Scenarist'
    property :sad, :label => 'Scientific advisor'
    property :aus, :label => 'Screenwriter'
    property :scr, :label => 'Scribe'
    property :scl, :label => 'Sculptor'
    property :spy, :label => 'Second party'
    property :sec, :label => 'Secretary'
    property :sll, :label => 'Seller'
    property :std, :label => 'Set designer'
    property :stg, :label => 'Setting'
    property :sgn, :label => 'Signer'
    property :sng, :label => 'Singer'
    property :sds, :label => 'Sound designer'
    property :spk, :label => 'Speaker'
    property :spn, :label => 'Sponsor'
    property :sgd, :label => 'Stage director'
    property :stm, :label => 'Stage manager'
    property :stn, :label => 'Standards body'
    property :str, :label => 'Stereotyper'
    property :stl, :label => 'Storyteller'
    property :sht, :label => 'Supporting host'
    property :srv, :label => 'Surveyor'
    property :tch, :label => 'Teacher'
    property :tcd, :label => 'Technical director'
    property :tld, :label => 'Television director'
    property :tlp, :label => 'Television producer'
    property :ths, :label => 'Thesis advisor'
    property :trc, :label => 'Transcriber'
    property :trl, :label => 'Translator'
    property :tyd, :label => 'Type designer'
    property :tyg, :label => 'Typographer'
    property :uvp, :label => 'University place'
    property :vdg, :label => 'Videographer'
    property :wit, :label => 'Witness'
    property :wde, :label => 'Wood engraver'
    property :wdc, :label => 'Woodcutter'
    property :wam, :label => 'Writer of accompanying material'
    property :wac, :label => 'Writer of added commentary'
    property :wal, :label => 'Writer of added lyrics'
    property :wat, :label => 'Writer of added text'

    # Concept terms

    # Other terms
    property :collection_BIBFRAMEInstance, :label => 'Relators - BIBFRAME Instance Collection'
    property :collection_BIBFRAMEWork, :label => 'Relators - BIBFRAME Work Collection'
    property :collection_RDA, :label => 'Relators - RDA Collection'
    property :collection_RDAContributor, :label => 'Relators - RDA Contributor Collection'
    property :collection_RDACreator, :label => 'Relators - RDA Creator Collection'
    property :collection_RDADistributor, :label => 'Relators - RDA Distributor Collection'
    property :collection_RDAExpression, :label => 'Relators - RDA Expression Collection'
    property :collection_RDAItem, :label => 'Relators - RDA Item Collection'
    property :collection_RDAManifestation, :label => 'Relators - RDA Manifestation Collection'
    property :collection_RDAManufacturer, :label => 'Relators - RDA Manufacturer Collection'
    property :collection_RDAOther, :label => 'Relators - RDA Other Collection'
    property :collection_RDAOwner, :label => 'Relators - RDA Owner Collection'
    property :collection_RDAPublisher, :label => 'Relators - RDA Publisher Collection'
    property :collection_RDAWork, :label => 'Relators - RDA Work Collection'
  end
end
