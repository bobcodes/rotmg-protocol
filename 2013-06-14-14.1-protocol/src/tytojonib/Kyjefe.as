package tytojonib
{
   import vyso.Milapep;
   import fyfutuc.Ralod;
   import flash.events.IEventDispatcher;
   import flash.events.Event;


   public class Kyjefe extends Object implements Milapep
   {
      public function Kyjefe() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var mebu:Ralod;

      public var hijo:IEventDispatcher;

      private var racuhesy:Object;

      public function set viewComponent(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.racuhesy=param1;
         return;
      }

      public function initialize() : void {
         return;
      }

      public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mebu.gizocegag();
         return;
      }

      protected function hypasebu(param1:String, param2:Function, param3:Class=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.mebu.hipavy(IEventDispatcher(this.racuhesy),param1,param2,param3);
         return;
      }

      protected function gazocan(param1:String, param2:Function, param3:Class=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.mebu.hipavy(this.hijo,param1,param2,param3);
         return;
      }

      protected function fyfagoku(param1:String, param2:Function, param3:Class=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.mebu.tohibu(IEventDispatcher(this.racuhesy),param1,param2,param3);
         return;
      }

      protected function sakywah(param1:String, param2:Function, param3:Class=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.mebu.tohibu(this.hijo,param1,param2,param3);
         return;
      }

      protected function dispatch(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.hijo.hasEventListener(param1.type))
         {
            this.hijo.dispatchEvent(param1);
         }
         return;
      }
   }

}