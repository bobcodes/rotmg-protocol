package cukopumin
{
[CLASS619]   import pogefeqeh.Wahovy;
   import bus.Nygeles;
   import tapago.SsInternal;
   import keved.Nenehodo;
   import avmplus.getQualifiedClassName;
   import flash.utils.Dictionary;


   public class Wehaqy extends Gak
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Wehaqy(param1:String, param2:Array, param3:uint, param4:Boolean, param5:Dictionary) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         super();
         this.qabysi=param1;
         this.hefilidami=param2;
         this.qad=param3;
         this.moce=param4;
         this.injectParameters=param5;
         return;
      }

      private static const kafunywap:Array = [];

      protected var hefilidami:Array;

      protected var qad:int;

      private var moce:Boolean;

      private var qabysi:String;

      override public function applyInjection(param1:Object, param2:Class, param3:Wahovy) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Array = this.gomozanof(param1,param2,param3);
         if(_loc4_.length>=this.qad)
         {
            (param1[this.qabysi] as Function).apply(param1,_loc4_);
         }
         _loc4_.length=0;
         return;
      }

      protected function gomozanof(param1:Object, param2:Class, param3:Wahovy) : Array {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc7_:String = null;
         var _loc8_:Nygeles = null;
         var _loc4_:int = this.hefilidami.length;
         var _loc5_:Array = kafunywap;
         _loc5_.length=_loc4_;
         var _loc6_:* = 0;
         while(_loc6_<_loc4_)
         {
            _loc7_=this.hefilidami[_loc6_];
            _loc8_=param3.SsInternal::hukos(_loc7_);
            if(!_loc8_)
            {
               if(_loc6_>=this.qad||(this.moce))
               {
                  break;
               }
               throw new Nenehodo("Injector is missing a mapping to handle injection into target \""+param1+"\" of type \""+getQualifiedClassName(param2)+"\". \t\t\t\t\t\tTarget dependency: "+_loc7_+", method: "+this.qabysi+", parameter: "+(_loc6_+1));
            }
            else
            {
               _loc5_[_loc6_]=_loc8_.apply(param2,param3,injectParameters);
               _loc6_++;
               continue;
            }
         }
         return _loc5_;
      }
   }
[/CLASS]
}