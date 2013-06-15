package bud
{
   import dyca.Mes;
   import holije.Garyfajij;
   import vibajiku.SsInternal;
   import tateqyba.Lygape;
   import avmplus.getQualifiedClassName;
   import flash.utils.Dictionary;


   public class Nud extends Poq
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Nud(param1:String, param2:Array, param3:uint, param4:Boolean, param5:Dictionary) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         super();
         this.qyhoni=param1;
         this.sosa=param2;
         this.rikimymi=param3;
         this.wuro=param4;
         this.injectParameters=param5;
         return;
      }

      private static const golyd:Array = [];

      protected var sosa:Array;

      protected var rikimymi:int;

      private var wuro:Boolean;

      private var qyhoni:String;

      override public function applyInjection(param1:Object, param2:Class, param3:Mes) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Array = this.qozywyk(param1,param2,param3);
         if(_loc4_.length>=this.rikimymi)
         {
            (param1[this.qyhoni] as Function).apply(param1,_loc4_);
         }
         _loc4_.length=0;
         return;
      }

      protected function qozywyk(param1:Object, param2:Class, param3:Mes) : Array {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc7_:String = null;
         var _loc8_:Garyfajij = null;
         var _loc4_:int = this.sosa.length;
         var _loc5_:Array = golyd;
         _loc5_.length=_loc4_;
         var _loc6_:* = 0;
         while(_loc6_<_loc4_)
         {
            _loc7_=this.sosa[_loc6_];
            _loc8_=param3.SsInternal::bilas(_loc7_);
            if(!_loc8_)
            {
               if(_loc6_>=this.rikimymi||(this.wuro))
               {
                  break;
               }
               throw new Lygape("Injector is missing a mapping to handle injection into target \""+param1+"\" of type \""+getQualifiedClassName(param2)+"\". \t\t\t\t\t\tTarget dependency: "+_loc7_+", method: "+this.qyhoni+", parameter: "+(_loc6_+1));
            }
            else
            {
               _loc5_[_loc6_]=_loc8_.apply(param2,param3,injectParameters);
               _loc6_++;
               continue;
            }
            break;
         }
         return _loc5_;
      }
   }

}