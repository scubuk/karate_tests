package users;

import org.junit.runner.RunWith;
import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;

@RunWith(Karate.class)
@KarateOptions(features = "classpath:users/HelloWorld.feature")
public class HelloWorldRunner {

}
