

ALTER TABLE MRCONSO ADD CONSTRAINT X_MRCONSO_PK PRIMARY KEY (AUI)

CREATE NONCLUSTERED INDEX X_MRCONSO_CUI ON MRCONSO(CUI)
CREATE NONCLUSTERED INDEX X_MRCONSO_SUI ON MRCONSO(SUI)
CREATE NONCLUSTERED INDEX X_MRCONSO_LUI ON MRCONSO(LUI)
CREATE NONCLUSTERED INDEX X_MRCONSO_CODE ON MRCONSO(CODE)
CREATE NONCLUSTERED INDEX X_MRCONSO_SAB_TTY ON MRCONSO(SAB,TTY)
CREATE NONCLUSTERED INDEX X_MRCONSO_SCUI ON MRCONSO(SCUI)
CREATE NONCLUSTERED INDEX X_MRCONSO_SDUI ON MRCONSO(SDUI)
--CREATE NONCLUSTERED INDEX X_MRCONSO_STR ON MRCONSO(STR)

ALTER TABLE MRDEF ADD CONSTRAINT X_MRDEF_PK PRIMARY KEY (ATUI)
CREATE NONCLUSTERED INDEX X_MRDEF_CUI ON MRDEF(CUI)
CREATE NONCLUSTERED INDEX X_MRDEF_AUI ON MRDEF(AUI)
CREATE NONCLUSTERED INDEX X_MRDEF_SAB ON MRDEF(SAB)

CREATE NONCLUSTERED INDEX X_MRHIER_CUI ON MRHIER(CUI)
CREATE NONCLUSTERED INDEX X_MRHIER_AUI ON MRHIER(AUI)
CREATE NONCLUSTERED INDEX X_MRHIER_SAB ON MRHIER(SAB)
CREATE NONCLUSTERED INDEX X_MRHIER_PTR ON MRHIER(PTR)
CREATE NONCLUSTERED INDEX X_MRHIER_PAUI ON MRHIER(PAUI)

ALTER TABLE MRRANK ADD CONSTRAINT X_MRRANK_PK PRIMARY KEY (SAB,TTY)
ALTER TABLE MRREL ADD CONSTRAINT X_MRREL_PK PRIMARY KEY (RUI)

CREATE NONCLUSTERED INDEX X_MRREL_CUI1 ON MRREL(CUI1)
CREATE NONCLUSTERED INDEX X_MRREL_AUI1 ON MRREL(AUI1)
CREATE NONCLUSTERED INDEX X_MRREL_CUI2 ON MRREL(CUI2)
CREATE NONCLUSTERED INDEX X_MRREL_AUI2 ON MRREL(AUI2)
CREATE NONCLUSTERED INDEX X_MRREL_SAB ON MRREL(SAB)

ALTER TABLE MRSAB ADD CONSTRAINT X_MRSAB_PK PRIMARY KEY (VSAB)
CREATE NONCLUSTERED INDEX X_MRSAB_RSAB ON MRSAB(RSAB)

ALTER TABLE MRSAT ADD CONSTRAINT X_MRSAT_PK PRIMARY KEY (ATUI)
CREATE NONCLUSTERED INDEX X_MRSAT_CUI ON MRSAT(CUI)
CREATE NONCLUSTERED INDEX X_MRSAT_METAUI ON MRSAT(METAUI)
CREATE NONCLUSTERED INDEX X_MRSAT_SAB ON MRSAT(SAB)
CREATE NONCLUSTERED INDEX X_MRSAT_ATN ON MRSAT(ATN)

ALTER TABLE MRSTY ADD CONSTRAINT X_MRSTY_PK PRIMARY KEY (ATUI)
CREATE NONCLUSTERED INDEX X_MRSTY_CUI ON MRSTY(CUI)
CREATE NONCLUSTERED INDEX X_MRSTY_STY ON MRSTY(STY)

--CREATE NONCLUSTERED INDEX X_MRXNS_ENG_NSTR ON MRXNS_ENG(NSTR)
CREATE NONCLUSTERED INDEX X_MRXNW_ENG_NWD ON MRXNW_ENG(NWD)
CREATE NONCLUSTERED INDEX X_MRXW_ENG_WD ON MRXW_ENG(WD)

CREATE NONCLUSTERED INDEX X_AMBIGSUI_SUI ON AMBIGSUI(SUI)

CREATE NONCLUSTERED INDEX X_AMBIGLUI_LUI ON AMBIGLUI(LUI)

CREATE NONCLUSTERED INDEX X_MRAUI_CUI2 ON MRAUI(CUI2)

CREATE NONCLUSTERED INDEX X_MRCUI_CUI2 ON MRCUI(CUI2)

CREATE NONCLUSTERED INDEX X_MRMAP_MAPSETCUI ON MRMAP(MAPSETCUI)

