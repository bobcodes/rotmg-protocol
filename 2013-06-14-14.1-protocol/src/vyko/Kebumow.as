package vyko
{
   import qypajun.Byjytydon;
   import __AS3__.vec.Vector;
   import qypajun.Gaz;
   import hegasin.Qaqykuby;
   import flash.events.IEventDispatcher;
   import flash.utils.describeType;
   import dyca.Mes;


   public class Kebumow extends Object implements Byjytydon
   {
      public function Kebumow(param1:Mes, param2:IEventDispatcher, param3:String, param4:Class=null) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.jepyqibip=param2;
         this.vite=param3;
         this.kunojogeh=new Zucyq(this,this.pilyteno,param1,param4);
         return;
      }

      private const zenupi:Vector.<Gaz> = new Vector.<Gaz>();

      private const pilyteno:Qaqykuby = new Qaqykuby();

      private var jepyqibip:IEventDispatcher;

      private var vite:String;

      private var kunojogeh:Zucyq;

      public function rutuhu(param1:Gaz) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vuniso(param1);
         if(this.pilyteno.qyr)
         {
            this.pilyteno.qyr.next=param1;
         }
         else
         {
            this.pilyteno.ryvulavaj=param1;
            this.tas();
         }
         return;
      }

      public function wozohyk(param1:Gaz) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pilyteno.remove(param1);
         if(!this.pilyteno.ryvulavaj)
         {
            this.sel();
         }
         return;
      }

      private function vuniso(param1:Gaz) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var mapping:Gaz = param1;
         if(describeType(mapping.commandClass).factory.method.(@name=="execute").length()==0)
         {
            throw new Error("Command Class must expose an execute method");
         }
         else
         {
            return;
         }
      }

      private function tas() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jepyqibip.addEventListener(this.vite,this.kunojogeh.execute);
         return;
      }

      private function sel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jepyqibip.removeEventListener(this.vite,this.kunojogeh.execute);
         return;
      }
   }

}