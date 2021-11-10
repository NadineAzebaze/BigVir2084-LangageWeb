from lxml import etree

# pour parser
xml_doc = etree.parse('BigVir2084.xml')
schema = etree.parse('BigVir2084.xsd')

# pour valider un xml
xml_validator = etree.XMLSchema(schema)
xml_validator.validate(xml_doc) # true ou false

# pour faire des transformation
transformateur = etree.XSLT(t)
output = etree.tostring(transformateur(xml_doc), pretty_print = True)
ouput = output.decode(encoding = 'utf-8') # pour convertir en string
