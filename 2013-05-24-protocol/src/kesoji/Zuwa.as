package kesoji
{
   import dopumitud.Riqyh;
   import gag.Gawu;
   import sasacen.Kozivole;
   import gag.Poh;
   import gag.Myzawob;


   public class Zuwa extends Object
   {
      public function Zuwa() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var radezikym:Riqyh;

      public var rurusedi:Gawu;

      public var refresh:Kozivole;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Poh = new Poh(this.radezikym);
         _loc1_.nunubepyk(new Myzawob(this.refresh));
         this.rurusedi.add(_loc1_);
         _loc1_.start();
         return;
      }
   }

}