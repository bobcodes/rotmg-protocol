package vysob
{
   import mukyrosu.Qanyduk;
   import __AS3__.vec.Vector;
   import flash.events.Event;


   public class Kuwon extends Object
   {
      public function Kuwon() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sudiwowyc=new Vector.<String>();
         super();
         return;
      }

      private const qosuqa:Qanyduk = new Qanyduk();

      private var pevojal:Voni;

      private var sudiwowyc:Vector.<String>;

      public function add(param1:Voni, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.pevojal=param1;
         this.sudiwowyc.push(param2);
         param1.addEventListener(param2,this.mefyp);
         return;
      }

      private function mefyp(param1:Event) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:String = null;
         for each (_loc2_ in this.sudiwowyc)
         {
            this.pevojal.removeEventListener(_loc2_,this.mefyp);
         }
         this.pevojal.dadezum().dispatch();
         return;
      }

      public function dadezum() : Qanyduk {
         return this.qosuqa;
      }
   }

}