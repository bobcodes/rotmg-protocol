package bud
{
   import dyca.Mes;
   import vibajiku.SsInternal;
   import holije.Garyfajij;
   import tateqyba.Lygape;
   import flash.utils.getQualifiedClassName;
   import flash.utils.Dictionary;


   public class Qivysi extends Poq
   {
      public function Qivysi(param1:String, param2:String, param3:Boolean, param4:Dictionary) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.bapy=param2;
         this.kahi=param1;
         this.mogapyq=param3;
         this.injectParameters=param4;
         return;
      }

      private var bapy:String;

      private var kahi:String;

      private var mogapyq:Boolean;

      override public function applyInjection(param1:Object, param2:Class, param3:Mes) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:Garyfajij = param3.SsInternal::bilas(this.kahi);
         if(!_loc4_)
         {
            if(this.mogapyq)
            {
               return;
            }
            throw new Lygape("Injector is missing a mapping to handle injection into property \""+this.bapy+"\" of object \""+param1+"\" with type \""+getQualifiedClassName(param2)+"\". Target dependency: \""+this.kahi+"\"");
         }
         else
         {
            param1[this.bapy]=_loc4_.apply(param2,param3,injectParameters);
            return;
         }
      }
   }

}