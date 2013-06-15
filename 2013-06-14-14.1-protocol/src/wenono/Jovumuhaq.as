package wenono
{
   import waryp.Nulejufyl;
   import hivaw.Tyke;
   import komi.Vibemod;
   import hivysif.Guzowoja;
   import flash.text.TextFieldAutoSize;


   public class Jovumuhaq extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Jovumuhaq() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const wypes:uint = 36;

      public static const kuvagyj:uint = 22;

      private static const LEFT:String = TextFieldAutoSize.LEFT;

      private static const CENTER:String = TextFieldAutoSize.CENTER;

      private static const RIGHT:String = TextFieldAutoSize.RIGHT;

      private static var busecew:Nulejufyl;

      private static var lif:Nulejufyl;

      private static var quwakisu:Nulejufyl;

      private static var wizik:Nulejufyl;

      private static var dovehydu:Nulejufyl;

      private static var vymajusi:Nulejufyl;

      private static var romu:Nulejufyl;

      private static var vodaj:Nulejufyl;

      private static var zusuqa:Nulejufyl;

      private static var biw:Nulejufyl;

      public static function tawemuj() : Nulejufyl {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return busecew=(busecew)||(wemisusis(Tyke.ryteluli,wypes,CENTER,true));
      }

      public static function womidaty() : Nulejufyl {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return biw=(biw)||(wemisusis(Vibemod.kucy,kuvagyj,LEFT));
      }

      public static function pequqymo() : Nulejufyl {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return zusuqa=(zusuqa)||(wemisusis(Vibemod.jazekyh,kuvagyj,RIGHT));
      }

      public static function qeciresa() : Nulejufyl {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return vodaj=(vodaj)||(wemisusis(Vibemod.bucuw,wypes,CENTER));
      }

      public static function zedezy() : Nulejufyl {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return quwakisu=(quwakisu)||(wemisusis(Tyke.sis,kuvagyj,LEFT));
      }

      public static function gufamutag() : Nulejufyl {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return wizik=(wizik)||(wemisusis(Tyke.cehemi,kuvagyj,LEFT));
      }

      public static function nykym() : Nulejufyl {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return lif=(lif)||(wemisusis(Tyke.dawogi,kuvagyj,RIGHT));
      }

      public static function mymevuzu() : Nulejufyl {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return dovehydu=(dovehydu)||(wemisusis(Tyke.qogijivy,kuvagyj,RIGHT));
      }

      public static function tonura() : Nulejufyl {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return vymajusi=(vymajusi)||(wemisusis(Tyke.lycudow,kuvagyj,RIGHT));
      }

      public static function rolaj() : Nulejufyl {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return romu=(romu)||(wemisusis(Tyke.redagohyf,kuvagyj,LEFT));
      }

      private static function wemisusis(param1:String, param2:int, param3:String, param4:Boolean=false) : Nulejufyl {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Nulejufyl = new Nulejufyl(param1,param2,param4);
         _loc5_.setAutoSize(param3);
         _loc5_.setVerticalAlign(Guzowoja.MIDDLE);
         return _loc5_;
      }
   }

}