package jyqiqagog
{
   import kyco.Nun;
   import bolihe.Cuwively;
   import veb.SsInternal;
   import niquhuwuj.Qiduqez;
   import avmplus.getQualifiedClassName;
   import flash.utils.Dictionary;


   public class Tezeg extends Cotaras
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Tezeg(param1:String, param2:Array, param3:uint, param4:Boolean, param5:Dictionary) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         super();
         this.jotysyda=param1;
         this.zozup=param2;
         this.konu=param3;
         this.punipe=param4;
         this.injectUserConfig=param5;
         return;
      }

      private static const qos:Array = [];

      protected var zozup:Array;

      protected var konu:int;

      private var punipe:Boolean;

      private var jotysyda:String;

      override public function applyInjection(param1:Object, param2:Class, param3:Nun) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Array = this.lyhe(param1,param2,param3);
         if(_loc4_.length>=this.konu)
         {
            (param1[this.jotysyda] as Function).apply(param1,_loc4_);
         }
         _loc4_.length=0;
         return;
      }

      protected function lyhe(param1:Object, param2:Class, param3:Nun) : Array {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc7_:String = null;
         var _loc8_:Cuwively = null;
         var _loc4_:int = this.zozup.length;
         var _loc5_:Array = qos;
         _loc5_.length=_loc4_;
         var _loc6_:* = 0;
         while(_loc6_<_loc4_)
         {
            _loc7_=this.zozup[_loc6_];
            _loc8_=param3.SsInternal::bazesujeq(_loc7_);
            if(!_loc8_)
            {
               if(_loc6_>=this.konu||(this.punipe))
               {
                  break;
               }
               throw new Qiduqez("Injector is missing a mapping to handle injection into target \""+param1+"\" of type \""+getQualifiedClassName(param2)+"\". \t\t\t\t\t\tTarget dependency: "+_loc7_+", method: "+this.jotysyda+", parameter: "+(_loc6_+1));
            }
            else
            {
               _loc5_[_loc6_]=_loc8_.apply(param2,param3,injectUserConfig);
               _loc6_++;
               continue;
            }
         }
         return _loc5_;
      }
   }

}