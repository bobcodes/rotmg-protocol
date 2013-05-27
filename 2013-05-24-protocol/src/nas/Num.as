package nas
{
   import tulunyno.Hugyqufyq;
   import __AS3__.vec.Vector;
   import flash.events.Event;


   public class Num extends Object
   {
      public function Num() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gumas=new Vector.<String>();
         super();
         return;
      }

      private const filedyqo:Hugyqufyq = new Hugyqufyq();

      private var kycusoqum:Facuca;

      private var gumas:Vector.<String>;

      public function add(param1:Facuca, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.kycusoqum=param1;
         this.gumas.push(param2);
         param1.addEventListener(param2,this.zusowehev);
         return;
      }

      private function zusowehev(param1:Event) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:String = null;
         for each (_loc2_ in this.gumas)
         {
            this.kycusoqum.removeEventListener(_loc2_,this.zusowehev);
         }
         this.kycusoqum.polojubu().dispatch();
         return;
      }

      public function polojubu() : Hugyqufyq {
         return this.filedyqo;
      }
   }

}