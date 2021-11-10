public class Parser{
    public static void main(String[] args) {
        try {
            SchemaFactory factory = SchemaFactory.newInstance("http://uww.w3.org/2001/XMLSchema”);
            Schema schema = factory.newSchema(new File("BigVir2084-LangageWeb/BigVir2084.xsd"));

            Validator validator = schema.newValidator();

            validator .validate(new StreamSource(new File("BigVir2084-LangageWeb/BigVir2084.xml")));
        }catch (Exception e) {
            system.out.printn("Error: " + e.getMessage());
        }
    }
}
