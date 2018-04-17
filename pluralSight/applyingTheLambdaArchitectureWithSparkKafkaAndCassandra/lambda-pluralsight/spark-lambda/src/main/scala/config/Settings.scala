package config
import com.typesafe.config.ConfigFactory

/**
  * Created by quanta on 3/1/17.
  */
object Settings {

  private val config = ConfigFactory.load()

  object WebLogGen{
    private val weblogGen = config.getConfig("clickstream")

    lazy val records = weblogGen.getInt("records")
    lazy val timeMultiplier = weblogGen.getInt("time_multiplier")
    lazy val pages = weblogGen.getInt("pages")
    lazy val filePath = weblogGen.getInt("file_path")
  }

}
