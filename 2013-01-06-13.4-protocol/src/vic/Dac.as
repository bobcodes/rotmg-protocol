package vic
{
[CLASS399]   import bikyvym.Mive;
   import korer.Zumer;
   import pogefeqeh.Wahovy;
   import bikyvym.Cedymynet;
   import korer.Fiwocazut;
   import fomykuq.Sedubali;


   public class Dac extends Object implements Mive
   {
      public function Dac() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static var radojeqo:Zumer;

      private static var jewygi:uint;

      private const pubutahic:String = Sedubali.create(Dac);

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
         if(radojeqo==null)
         {
            _loc1_=this.qod.getInstance(Fiwocazut);
            radojeqo=new Zumer(_loc1_);
         }
         return;
      }

      private function hypyry() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         jewygi--;
         if(jewygi==0)
         {
            radojeqo.destroy();
            radojeqo=null;
         }
         return;
      }
   }
[/CLASS]
}