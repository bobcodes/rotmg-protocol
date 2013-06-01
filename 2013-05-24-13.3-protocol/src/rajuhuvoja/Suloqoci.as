package rajuhuvoja
{
   import flash.events.EventDispatcher;
   import bidav.Keho;
   import flash.utils.Dictionary;
   import kyco.Nun;
   import bidav.Cijukuca;
   import dasygu.Ceseto;
   import bidav.Puz;
   import jebaraqeq.guardsApprove;
   import jebaraqeq.applyHooks;
   import __AS3__.vec.Vector;


   public class Suloqoci extends EventDispatcher implements Keho
   {
      public function Suloqoci(param1:Nun) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.pub=param1;
         return;
      }

      private const zaqyz:Dictionary = new Dictionary();

      private var pub:Nun;

      public function sewedoh(param1:Object, param2:Cijukuca) : Object {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return this.zaqyz[param1]?this.zaqyz[param1][param2]:null;
      }

      public function jejukuj(param1:Object, param2:Class, param3:Array) : Array {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc5_:Ceseto = null;
         var _loc6_:Object = null;
         var _loc7_:Cijukuca = null;
         var _loc4_:Array = [];
         for each (_loc7_ in param3)
         {
            _loc6_=this.sewedoh(param1,_loc7_);
            if(!_loc6_)
            {
               _loc5_=_loc7_.judip;
               this.fanepu(_loc5_,param2,param1);
               _loc6_=this.jumykuful(param1,_loc7_);
               this.qigi(_loc5_,param2,param1);
            }
            if(_loc6_)
            {
               _loc4_.push(_loc6_);
            }
         }
         return _loc4_;
      }

      public function hukad(param1:Object) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Object = null;
         var _loc2_:Dictionary = this.zaqyz[param1];
         if(!_loc2_)
         {
            return;
         }
         if(hasEventListener(Puz.sypinyle))
         {
            for (_loc3_ in _loc2_)
            {
               dispatchEvent(new Puz(Puz.sypinyle,_loc2_[_loc3_],param1,_loc3_ as Cijukuca,this));
            }
         }
         delete this.zaqyz[[param1]];
         return;
      }

      public function fyris() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Object = null;
         for (_loc1_ in this.zaqyz)
         {
            this.hukad(_loc1_);
         }
         return;
      }

      private function jumykuful(param1:Object, param2:Cijukuca) : Object {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Object = this.sewedoh(param1,param2);
         if(_loc3_)
         {
            return _loc3_;
         }
         if(guardsApprove(param2.jagytep,this.pub))
         {
            _loc3_=this.pub.getInstance(param2.quguqo);
            this.pub.map(param2.quguqo).cufypy(_loc3_);
            applyHooks(param2.deh,this.pub);
            this.pub.gukin(param2.quguqo);
            this.gulo(_loc3_,param1,param2);
         }
         return _loc3_;
      }

      private function gulo(param1:Object, param2:Object, param3:Cijukuca) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.zaqyz[param2]=(this.zaqyz[param2])||(new Dictionary());
         this.zaqyz[param2][param3]=param1;
         if(hasEventListener(Puz.baky))
         {
            dispatchEvent(new Puz(Puz.baky,param1,param2,param3,this));
         }
         return;
      }

      private function fanepu(param1:Ceseto, param2:Class, param3:Object) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:Class = null;
         var _loc5_:Vector.<Class> = this.bipivi(param1,param2);
         for each (_loc4_ in _loc5_)
         {
            this.pub.map(_loc4_).cufypy(param3);
         }
         return;
      }

      private function qigi(param1:Ceseto, param2:Class, param3:Object) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:Class = null;
         var _loc5_:Vector.<Class> = this.bipivi(param1,param2);
         for each (_loc4_ in _loc5_)
         {
            if(this.pub.lob(_loc4_))
            {
               this.pub.gukin(_loc4_);
            }
         }
         return;
      }

      private function bipivi(param1:Ceseto, param2:Class) : Vector.<Class> {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Vector.<Class> = param1.nakijide.concat(param1.gajycih);
         if(_loc3_.indexOf(param2)==-1)
         {
            _loc3_.push(param2);
         }
         return _loc3_;
      }
   }

}