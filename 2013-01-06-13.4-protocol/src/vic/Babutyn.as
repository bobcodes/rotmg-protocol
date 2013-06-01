package vic
{
[CLASS390]   import bikyvym.Mive;
   import korer.Myl;
   import pogefeqeh.Wahovy;
   import bikyvym.Cedymynet;
   import korer.Fiwocazut;
   import fomykuq.Sedubali;


   public class Babutyn extends Object implements Mive
   {
      public function Babutyn() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var bykejidil:Myl;

      private static var jewygi:uint;

      private const pubutahic:String = Sedubali.create(Babutyn);

      private var qod:Wahovy;

      public function extend(param1:Cedymynet) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         jewygi++;
         this.qod=param1.viqelo;
         param1.sutu.zubyfi(this.zubyfi);
         param1.sutu.hypyry(this.hypyry);
         return;
      }

      public function toString() : String {
         return this.pubutahic;
      }

      private function zubyfi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Fiwocazut = null;
         if(bykejidil==null)
         {
            _loc1_=this.qod.getInstance(Fiwocazut);
            bykejidil=new Myl(_loc1_);
         }
         return;
      }

      private function hypyry() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         jewygi--;
         if(jewygi==0)
         {
            bykejidil.destroy();
            bykejidil=null;
         }
         return;
      }
   }
[/CLASS]
}