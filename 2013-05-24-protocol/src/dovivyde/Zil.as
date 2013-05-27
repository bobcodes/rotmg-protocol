package dovivyde
{
   import komawowag.Bep;
   import nago.Keqis;
   import fup.Gopyb;
   import komawowag.Lagyqig;
   import komawowag.Net;


   public class Zil extends Object implements Bep
   {
      public function Zil(param1:Net) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.pifofecu=param1.cemohoqal.getInstance(Keqis);
         this.fuset=new Gopyb();
         return;
      }

      private var pifofecu:Keqis;

      private var fuset:Gopyb;

      public function log(param1:Object, param2:uint, param3:int, param4:String, param5:Array=null) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc6_:String = Lagyqig.NAME[param2]+" "+param1+" "+this.fuset.zopa(param4,param5);
         this.pifofecu.dispatch(_loc6_);
         return;
      }
   }

}