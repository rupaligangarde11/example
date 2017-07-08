import com.Example;
import org.assertj.core.api.Assertions;
import org.junit.Test;

public class ExampleTest {



    @Test
    public void shouldReturnHelloWorld(){
        Example example=new Example();
        Assertions.assertThat(example.home()).isEqualTo("Hello World!");
    }
}