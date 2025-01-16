import com.intuit.karate.junit5.Karate;

class TestRunner {

    @Karate.Test
Karate testApi() {
    return Karate.run("classpath:features/api-tests.feature").relativeTo(getClass());
}

}
