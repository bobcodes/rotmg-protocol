package koj
{
   import tulunyno.Hugyqufyq;
   import flash.utils.Dictionary;
   import flash.events.IEventDispatcher;
   import flash.events.Event;


   public class Vilan extends Hugyqufyq
   {
      public function Vilan(param1:String, ... rest) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.byguzones=param1;
         this.hitohi=new Dictionary(true);
         super(rest);
         return;
      }

      private var byguzones:String;

      private var hitohi:Dictionary;

      public function map(param1:IEventDispatcher, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.hitohi[param1]=param2;
         param1.addEventListener(this.byguzones,this.fusegijin,false,0,true);
         return;
      }

      private function fusegijin(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatch(this.hitohi[param1.target]);
         return;
      }
   }

}