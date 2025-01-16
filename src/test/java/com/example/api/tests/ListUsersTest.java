
import com.intuit.karate.junit5.Karate;

class ListUsersTest {
    @Karate.Test
    Karate testUsers() {
        return Karate.run("classpath:features/list-users.feature");
    }
}
