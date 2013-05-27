package wehagec
{
[CLASS3]   import komawowag.Silikyta;
   import komawowag.Net;
   import aaa.rotmg.config.GoogleAppConfig;
   import ginarasew.Kal;


   public class Kovaqisi extends Object implements Silikyta
   {
      public function Kovaqisi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var context:Net;

      public var nerynuk:GoogleAppConfig;

      public function configure() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.nerynuk.dyb())
         {
            this.context.extend(Kal);
         }
         return;
      }
   }

}