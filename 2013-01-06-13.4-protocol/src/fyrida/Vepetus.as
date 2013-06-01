package fyrida
{
[CLASS909]   import sogi.Tuwenaq;
   import __AS3__.vec.Vector;
   import sogi.Vydosyb;
   import tinava.Ryt;
   import pogefeqeh.Wahovy;
   import flash.utils.Dictionary;
   import flash.utils.describeType;
   import fomykuq.guardsApprove;
   import fomykuq.applyHooks;


   public class Vepetus extends Object implements Tuwenaq
   {
      public function Vepetus(param1:Wahovy, param2:Class, param3:Boolean=false) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.qod=param1;
         this.hihywamab=param2;
         this._once=param3;
         this.zysyhec=new Dictionary(false);
         this.gipobyryr=new Dictionary(false);
         return;
      }

      private const geqas:Vector.<Vydosyb> = new Vector.<Vydosyb>();

      private var _signal:Ryt;

      private var hihywamab:Class;

      private var _once:Boolean;

      protected var qod:Wahovy;

      protected var zysyhec:Dictionary;

      protected var gipobyryr:Dictionary;

      public function malydylo(param1:Vydosyb) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gaqiby(param1);
         this.geqas.push(param1);
         if(this.geqas.length==1)
         {
            this.wok(param1.commandClass);
         }
         return;
      }

      public function cove(param1:Vydosyb) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = this.geqas.indexOf(param1);
         if(_loc2_!=-1)
         {
            this.geqas.splice(_loc2_,1);
            if(this.geqas.length==0)
            {
               this.luwyfi(param1.commandClass);
            }
         }
         return;
      }

      protected function gaqiby(param1:Vydosyb) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var mapping:Vydosyb = param1;
         if(this.gipobyryr[mapping.commandClass])
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
            this.gipobyryr[mapping.commandClass]=true;
            return;
         }
      }

      protected function wyfywipyf(param1:Ryt, param2:Array, param3:Class, param4:Boolean) : void {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc6_:Vydosyb = null;
         var _loc7_:* = false;
         var _loc8_:Object = null;
         var _loc5_:Vector.<Vydosyb> = this.geqas.concat();
         for each (_loc6_ in _loc5_)
         {
            this.zalep(param1.valueClasses,param2);
            _loc7_=guardsApprove(_loc6_.kudav,this.qod);
            if(_loc7_)
            {
               this.qod.map(_loc6_.commandClass).fajuna();
               _loc8_=this.qod.getInstance(_loc6_.commandClass);
               applyHooks(_loc6_.mukig,this.qod);
               this.qod.gihacas(_loc6_.commandClass);
            }
            this.wivoti(param1.valueClasses,param2);
            if(_loc7_)
            {
               _loc8_.execute();
            }
         }
         if(this._once)
         {
            this.luwyfi(param3);
         }
         return;
      }

      protected function zalep(param1:Array, param2:Array) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:uint = 0;
         while(_loc3_<param1.length)
         {
            this.qod.map(param1[_loc3_]).zoru(param2[_loc3_]);
            _loc3_++;
         }
         return;
      }

      protected function wivoti(param1:Array, param2:Array) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:uint = 0;
         while(_loc3_<param1.length)
         {
            this.qod.gihacas(param1[_loc3_]);
            _loc3_++;
         }
         return;
      }

      protected function zubanyr(param1:Ryt, param2:Class) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Dictionary = this.zysyhec[param1];
         if(_loc3_==null)
         {
            return false;
         }
         var _loc4_:Function = _loc3_[param2];
         return !(_loc4_==null);
      }

      private function wok(param1:Class) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var commandClass:Class = param1;
         if(this.zubanyr(this._signal,commandClass))
         {
            return;
         }
         this._signal=this.qod.getInstance(this.hihywamab);
         this.qod.map(this.hihywamab).zoru(this._signal);
         var signalCommandMap:Dictionary = this.zysyhec[this._signal]=(this.zysyhec[this._signal])||(new Dictionary(false));
         var callback:Function = new function():void
         {
            wyfywipyf(_signal,arguments,commandClass,_once);
            return;
         };
         signalCommandMap[commandClass]=callback;
         this._signal.add(callback);
         return;
      }

      private function luwyfi(param1:Class) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Dictionary = this.zysyhec[this._signal];
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
[/CLASS]
}