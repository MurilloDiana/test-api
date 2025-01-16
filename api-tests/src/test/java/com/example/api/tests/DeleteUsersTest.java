import com.intuit.karate.junit5.Karate;

class DeleteUserTest {
    @Karate.Test
    Karate testDeleteUser() {
        return Karate.run("classpath:features/delete-user.feature");
    }
}
