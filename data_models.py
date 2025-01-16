from sqlalchemy import Column, Integer, String
from sqlalchemy.orm import declarative_base

# Declare a mapping
Base = declarative_base()

class Textes(Base):
    __tablename__ = 'textes'
    
    TexteCode = Column("TexteCode", Integer, primary_key=True)
    PaysCode = Column("PaysCode", String, nullable=False)
    AnneeCodeDebut = Column("AnnéeCodeDébut", Integer)
    AnneeCodeFin = Column("AnnéeCodeFin", Integer)
    TexteLegalExactCode = Column("TexteLégalExactCode", String)
    TexteFiscExactCode = Column("TexteFiscExactCode", String)
    TexteCodeArborescence = Column("TexteCodeArborescence", String)
    TexteCourt = Column("TexteCourt", String)
    TexteComplet = Column("TexteComplet", String)