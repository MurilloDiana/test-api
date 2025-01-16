import com.intuit.karate.junit5.Karate;

class UpdateUserTest {
    @Karate.Test
    Karate testUpdateUser() {
        return Karate.run("classpath:features/update-user.feature");
    }
}
