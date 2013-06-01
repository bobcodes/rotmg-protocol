package wuhafyv
{
[CLASS1589]   import sogi.Tuwenaq;
   import __AS3__.vec.Vector;
   import sogi.Vydosyb;
   import few.Qego;
   import flash.events.IEventDispatcher;
   import flash.utils.describeType;
   import pogefeqeh.Wahovy;


   public class Gunalofa extends Object implements Tuwenaq
   {
      public function Gunalofa(param1:Wahovy, param2:IEventDispatcher, param3:String, param4:Class=null) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.maw=param2;
         this.qimopipoz=param3;
         this.vyjyraba=new Medijutow(this,this.zucucy,param1,param4);
         return;
      }

      private const geqas:Vector.<Vydosyb> = new Vector.<Vydosyb>();

      private const zucucy:Qego = new Qego();

      private var maw:IEventDispatcher;

      private var qimopipoz:String;

      private var vyjyraba:Medijutow;

      public function malydylo(param1:Vydosyb) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gaqiby(param1);
         if(this.zucucy.tafumapoq)
         {
            this.zucucy.tafumapoq.next=param1;
         }
         else
         {
            this.zucucy.bufitot=param1;
            this.fyrakuv();
         }
         return;
      }

      public function cove(param1:Vydosyb) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zucucy.remove(param1);
         if(!this.zucucy.bufitot)
         {
            this.typ();
         }
         return;
      }

      private function gaqiby(param1:Vydosyb) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var mapping:Vydosyb = param1;
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

      private function fyrakuv() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.maw.addEventListener(this.qimopipoz,this.vyjyraba.execute);
         return;
      }

      private function typ() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.maw.removeEventListener(this.qimopipoz,this.vyjyraba.execute);
         return;
      }
   }
[/CLASS]
}