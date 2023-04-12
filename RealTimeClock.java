import java.time.LocalTime;

public class RealTimeClock {
  public static void main(String[] args) throws InterruptedException {
    while (true) {
      LocalTime time = LocalTime.now();
      System.out.println("The time is: " + time.toString());
      Thread.sleep(1000);
    }
  }
}

