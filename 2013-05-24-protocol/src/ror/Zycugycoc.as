package ror
{
   import laho.Lezihej;
   import __AS3__.vec.Vector;
   import laho.Bolyroty;
   import tulunyno.Lumik;
   import kyco.Nun;
   import flash.utils.Dictionary;
   import flash.utils.describeType;
   import jebaraqeq.guardsApprove;
   import jebaraqeq.applyHooks;


   public class Zycugycoc extends Object implements Lezihej
   {
      public function Zycugycoc(param1:Nun, param2:Class, param3:Boolean=false) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.pub=param1;
         this.lufi=param2;
         this._once=param3;
         this.fof=new Dictionary(false);
         this.lagi=new Dictionary(false);
         return;
      }

      private const qydyd:Vector.<Bolyroty> = new Vector.<Bolyroty>();

      private var _signal:Lumik;

      private var lufi:Class;

      private var _once:Boolean;

      protected var pub:Nun;

      protected var fof:Dictionary;

      protected var lagi:Dictionary;

      public function fibol(param1:Bolyroty) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qog(param1);
         this.qydyd.push(param1);
         if(this.qydyd.length==1)
         {
            this.cequ(param1.commandClass);
         }
         return;
      }

      public function qukijyq(param1:Bolyroty) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = this.qydyd.indexOf(param1);
         if(_loc2_!=-1)
         {
            this.qydyd.splice(_loc2_,1);
            if(this.qydyd.length==0)
            {
               this.cipid(param1.commandClass);
            }
         }
         return;
      }

      protected function qog(param1:Bolyroty) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var mapping:Bolyroty = param1;
         if(this.lagi[mapping.commandClass])
         {
            return;
         }
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
            this.lagi[mapping.commandClass]=true;
            return;
         }
      }

      protected function dyno(param1:Lumik, param2:Array, param3:Class, param4:Boolean) : void {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc6_:Bolyroty = null;
         var _loc7_:* = false;
         var _loc8_:Object = null;
         var _loc5_:Vector.<Bolyroty> = this.qydyd.concat();
         for each (_loc6_ in _loc5_)
         {
            this.tuqahovyk(param1.valueClasses,param2);
            _loc7_=guardsApprove(_loc6_.jagytep,this.pub);
            if(_loc7_)
            {
               this.pub.map(_loc6_.commandClass).pybe();
               _loc8_=this.pub.getInstance(_loc6_.commandClass);
               applyHooks(_loc6_.deh,this.pub);
               this.pub.gukin(_loc6_.commandClass);
            }
            this.vejuz(param1.valueClasses,param2);
            if(_loc7_)
            {
               _loc8_.execute();
            }
         }
         if(this._once)
         {
            this.cipid(param3);
         }
         return;
      }

      protected function tuqahovyk(param1:Array, param2:Array) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:uint = 0;
         while(_loc3_<param1.length)
         {
            this.pub.map(param1[_loc3_]).cufypy(param2[_loc3_]);
            _loc3_++;
         }
         return;
      }

      protected function vejuz(param1:Array, param2:Array) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:uint = 0;
         while(_loc3_<param1.length)
         {
            this.pub.gukin(param1[_loc3_]);
            _loc3_++;
         }
         return;
      }

      protected function bet(param1:Lumik, param2:Class) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Dictionary = this.fof[param1];
         if(_loc3_==null)
         {
            return false;
         }
         var _loc4_:Function = _loc3_[param2];
         return !(_loc4_==null);
      }

      private function cequ(param1:Class) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var commandClass:Class = param1;
         if(this.bet(this._signal,commandClass))
         {
            return;
         }
         this._signal=this.pub.getInstance(this.lufi);
         this.pub.map(this.lufi).cufypy(this._signal);
         var signalCommandMap:Dictionary = this.fof[this._signal]=(this.fof[this._signal])||(new Dictionary(false));
         var callback:Function = new function():void
         {
            dyno(_signal,arguments,commandClass,_once);
            return;
         };
         signalCommandMap[commandClass]=callback;
         this._signal.add(callback);
         return;
      }

      private function cipid(param1:Class) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Dictionary = this.fof[this._signal];
         if(_loc2_==null)
         {
            return;
         }
         var _loc3_:Function = _loc2_[param1];
         if(_loc3_==null)
         {
            return;
         }
         this._signal.remove(_loc3_);
         delete _loc2_[[param1]];
         return;
      }
   }

}