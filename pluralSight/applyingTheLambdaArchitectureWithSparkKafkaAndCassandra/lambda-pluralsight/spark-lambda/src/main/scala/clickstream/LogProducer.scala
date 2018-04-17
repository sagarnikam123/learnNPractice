package clickstream

import java.io.FileWriter

import config.Settings

import scala.util.Random

/**
  * Created by quanta on 3/1/17.
  */
object LogProducer extends App{

  // weblog config
  val wlc = Settings.WebLogGen

  val Products = scala.io.Source.fromInputStream(getClass.getResourceAsStream("/products.csv")).getLines().toArray
  val Referrers = scala.io.Source.fromInputStream(getClass.getResourceAsStream("/referrers.csv")).getLines().toArray
  val Visitors = (0 to wlc.visitors).map("Visitor-" + _)
  val Pages = (0 to wlc.pages).map("Page-"+ _)

  val rnd = new Random()
  val filePath = wlc.filePath

  val fw = new FileWriter(filePath, true)

  // introduce some randomness to time increments for demo purposes
  val incrementTimeEvery = rnd.nextInt(wlc.records - 1) + 1

  var timestamp = System.currentTimeMillis()
  var adjustedTimestamp = timestamp

  for(iteration <- 1 to wlc.records){
    adjustedTimestamp = adjustedTimestamp + ((System.currentTimeMillis() - timestamp) * wlc.timeMultiplier)
    timestamp = System.currentTimeMillis() // move all this to a function
    val action = iteration % (rnd.nextInt(200) + 1) match{
        case 0 => "purchase"
        case 1 => "add_to_cart"
        case _ => "page_view"
      }
    val referrer = Referrers(rnd.nextInt(Referrers.length - 1))
    val prevPage = referrer match {

    }
  }
}
