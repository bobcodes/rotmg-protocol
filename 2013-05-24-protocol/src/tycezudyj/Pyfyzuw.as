package tycezudyj
{
   import laho.Lezihej;
   import __AS3__.vec.Vector;
   import laho.Bolyroty;
   import sivopa.Naly;
   import flash.events.IEventDispatcher;
   import flash.utils.describeType;
   import kyco.Nun;


   public class Pyfyzuw extends Object implements Lezihej
   {
      public function Pyfyzuw(param1:Nun, param2:IEventDispatcher, param3:String, param4:Class=null) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.pidehyt=param2;
         this.cuwiqytid=param3;
         this.febul=new Wepuli(this,this.zutylyk,param1,param4);
         return;
      }

      private const qydyd:Vector.<Bolyroty> = new Vector.<Bolyroty>();

      private const zutylyk:Naly = new Naly();

      private var pidehyt:IEventDispatcher;

      private var cuwiqytid:String;

      private var febul:Wepuli;

      public function fibol(param1:Bolyroty) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qog(param1);
         if(this.zutylyk.wukycasew)
         {
            this.zutylyk.wukycasew.next=param1;
         }
         else
         {
            this.zutylyk.naril=param1;
            this.cemari();
         }
         return;
      }

      public function qukijyq(param1:Bolyroty) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zutylyk.remove(param1);
         if(!this.zutylyk.naril)
         {
            this.tuwi();
         }
         return;
      }

      private function qog(param1:Bolyroty) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var mapping:Bolyroty = param1;
         for each (_loc7_ in describeType(mapping.commandClass).factory.method)
         {
            with(_loc7_)
            {
               
               if(@name=="execute")
               {
                  _loc3_[_loc4_]=_loc6_;
               }
            }
         }
         if(_loc3_.length()==0)
         {
            throw new Error("Command Class must expose an execute method");
         }
         else
         {
            return;
         }
      }

      private function cemari() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pidehyt.addEventListener(this.cuwiqytid,this.febul.execute);
         return;
      }

      private function tuwi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pidehyt.removeEventListener(this.cuwiqytid,this.febul.execute);
         return;
      }
   }

}