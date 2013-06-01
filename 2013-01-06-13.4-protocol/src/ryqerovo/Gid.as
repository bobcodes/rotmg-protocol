package ryqerovo
{
[CLASS1021]   import flash.events.EventDispatcher;
   import wufyba.Pyluwej;
   import flash.utils.Dictionary;
   import pogefeqeh.Wahovy;
   import wufyba.Hifo;
   import doganovide.Symyniwe;
   import wufyba.Hujygyzi;
   import fomykuq.guardsApprove;
   import fomykuq.applyHooks;
   import __AS3__.vec.Vector;


   public class Gid extends EventDispatcher implements Pyluwej
   {
      public function Gid(param1:Wahovy) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.qod=param1;
         return;
      }

      private const gigatyre:Dictionary = new Dictionary();

      private var qod:Wahovy;

      public function wyz(param1:Object, param2:Hifo) : Object {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return this.gigatyre[param1]?this.gigatyre[param1][param2]:null;
      }

      public function puhywylec(param1:Object, param2:Class, param3:Array) : Array {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc5_:Symyniwe = null;
         var _loc6_:Object = null;
         var _loc7_:Hifo = null;
         var _loc4_:Array = [];
         for each (_loc7_ in param3)
         {
            _loc6_=this.wyz(param1,_loc7_);
            if(!_loc6_)
            {
               _loc5_=_loc7_.jipini;
               this.hugam(_loc5_,param2,param1);
               _loc6_=this.pufu(param1,_loc7_);
               this.nyzes(_loc5_,param2,param1);
            }
            if(_loc6_)
            {
               _loc4_.push(_loc6_);
            }
         }
         return _loc4_;
      }

      public function vin(param1:Object) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Object = null;
         var _loc2_:Dictionary = this.gigatyre[param1];
         if(!_loc2_)
         {
            return;
         }
         if(hasEventListener(Hujygyzi.helebupej))
         {
            for (_loc3_ in _loc2_)
            {
               dispatchEvent(new Hujygyzi(Hujygyzi.helebupej,_loc2_[_loc3_],param1,_loc3_ as Hifo,this));
            }
         }
         delete this.gigatyre[[param1]];
         return;
      }

      public function vefatoka() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Object = null;
         for (_loc1_ in this.gigatyre)
         {
            this.vin(_loc1_);
         }
         return;
      }

      private function pufu(param1:Object, param2:Hifo) : Object {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Object = this.wyz(param1,param2);
         if(_loc3_)
         {
            return _loc3_;
         }
         if(guardsApprove(param2.kudav,this.qod))
         {
            _loc3_=this.qod.getInstance(param2.majy);
            this.qod.map(param2.majy).zoru(_loc3_);
            applyHooks(param2.mukig,this.qod);
            this.qod.gihacas(param2.majy);
            this.jubibok(_loc3_,param1,param2);
         }
         return _loc3_;
      }

      private function jubibok(param1:Object, param2:Object, param3:Hifo) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.gigatyre[param2]=(this.gigatyre[param2])||(new Dictionary());
         this.gigatyre[param2][param3]=param1;
         if(hasEventListener(Hujygyzi.syg))
         {
            dispatchEvent(new Hujygyzi(Hujygyzi.syg,param1,param2,param3,this));
         }
         return;
      }

      private function hugam(param1:Symyniwe, param2:Class, param3:Object) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:Class = null;
         var _loc5_:Vector.<Class> = this.wafocivim(param1,param2);
         for each (_loc4_ in _loc5_)
         {
            this.qod.map(_loc4_).zoru(param3);
         }
         return;
      }

      private function nyzes(param1:Symyniwe, param2:Class, param3:Object) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:Class = null;
         var _loc5_:Vector.<Class> = this.wafocivim(param1,param2);
         for each (_loc4_ in _loc5_)
         {
            if(this.qod.kelovohiv(_loc4_))
            {
               this.qod.gihacas(_loc4_);
            }
         }
         return;
      }

      private function wafocivim(param1:Symyniwe, param2:Class) : Vector.<Class> {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Vector.<Class> = param1.piw.concat(param1.nehihis);
         if(_loc3_.indexOf(param2)==-1)
         {
            _loc3_.push(param2);
         }
         return _loc3_;
      }
   }
[/CLASS]
}