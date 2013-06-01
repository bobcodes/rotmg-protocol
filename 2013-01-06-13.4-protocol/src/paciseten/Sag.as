package paciseten
{
[CLASS995]   import tinava.Dab;
   import flash.utils.Dictionary;
   import flash.events.IEventDispatcher;
   import flash.events.Event;


   public class Sag extends Dab
   {
      public function Sag(param1:String, ... rest) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.hifaw=param1;
         this.supatefem=new Dictionary(true);
         super(rest);
         return;
      }

      private var hifaw:String;

      private var supatefem:Dictionary;

      public function map(param1:IEventDispatcher, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.supatefem[param1]=param2;
         param1.addEventListener(this.hifaw,this.hij,false,0,true);
         return;
      }

      private function hij(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatch(this.supatefem[param1.target]);
         return;
      }
   }
[/CLASS]
}