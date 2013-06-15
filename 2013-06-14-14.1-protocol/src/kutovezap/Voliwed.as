package kutovezap
{
   import mukyrosu.Qanyduk;
   import flash.utils.Dictionary;
   import flash.events.IEventDispatcher;
   import flash.events.Event;


   public class Voliwed extends Qanyduk
   {
      public function Voliwed(param1:String, ... rest) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.lygadyw=param1;
         this.polifiti=new Dictionary(true);
         super(rest);
         return;
      }

      private var lygadyw:String;

      private var polifiti:Dictionary;

      public function map(param1:IEventDispatcher, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.polifiti[param1]=param2;
         param1.addEventListener(this.lygadyw,this.recipavac,false,0,true);
         return;
      }

      private function recipavac(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatch(this.polifiti[param1.target]);
         return;
      }
   }

}