package zeqituwu
{
   import qypajun.Byjytydon;
   import __AS3__.vec.Vector;
   import qypajun.Gaz;
   import mukyrosu.Gaqyd;
   import dyca.Mes;
   import flash.utils.Dictionary;
   import flash.utils.describeType;
   import donaqyzas.guardsApprove;
   import donaqyzas.applyHooks;


   public class Jyfepykuh extends Object implements Byjytydon
   {
      public function Jyfepykuh(param1:Mes, param2:Class, param3:Boolean=false) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.vybility=param1;
         this.wojeperi=param2;
         this._once=param3;
         this.lud=new Dictionary(false);
         this.hoqytyjih=new Dictionary(false);
         return;
      }

      private const zenupi:Vector.<Gaz> = new Vector.<Gaz>();

      private var _signal:Gaqyd;

      private var wojeperi:Class;

      private var _once:Boolean;

      protected var vybility:Mes;

      protected var lud:Dictionary;

      protected var hoqytyjih:Dictionary;

      public function rutuhu(param1:Gaz) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vuniso(param1);
         this.zenupi.push(param1);
         if(this.zenupi.length==1)
         {
            this.lyly(param1.commandClass);
         }
         return;
      }

      public function wozohyk(param1:Gaz) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.zenupi.indexOf(param1);
         if(_loc2_!=-1)
         {
            this.zenupi.splice(_loc2_,1);
            if(this.zenupi.length==0)
            {
               this.fosi(param1.commandClass);
            }
         }
         return;
      }

      protected function vuniso(param1:Gaz) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var mapping:Gaz = param1;
         if(this.hoqytyjih[mapping.commandClass])
         {
            return;
         }
         if(describeType(mapping.commandClass).factory.method.(@name=="execute").length()==0)
         {
            throw new Error("Command Class must expose an execute method");
         }
         else
         {
            this.hoqytyjih[mapping.commandClass]=true;
            return;
         }
      }

      protected function monili(param1:Gaqyd, param2:Array, param3:Class, param4:Boolean) : void {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc6_:Gaz = null;
         var _loc7_:* = false;
         var _loc8_:Object = null;
         var _loc5_:Vector.<Gaz> = this.zenupi.concat();
         for each (_loc6_ in _loc5_)
         {
            this.fupyjyfumi(param1.valueClasses,param2);
            _loc7_=guardsApprove(_loc6_.qegimabej,this.vybility);
            if(_loc7_)
            {
               this.vybility.map(_loc6_.commandClass).fezy();
               _loc8_=this.vybility.getInstance(_loc6_.commandClass);
               applyHooks(_loc6_.dema,this.vybility);
               this.vybility.ricelira(_loc6_.commandClass);
            }
            this.newidikum(param1.valueClasses,param2);
            if(_loc7_)
            {
               _loc8_.execute();
            }
         }
         if(this._once)
         {
            this.fosi(param3);
         }
         return;
      }

      protected function fupyjyfumi(param1:Array, param2:Array) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:uint = 0;
         while(_loc3_<param1.length)
         {
            this.vybility.map(param1[_loc3_]).pylo(param2[_loc3_]);
            _loc3_++;
         }
         return;
      }

      protected function newidikum(param1:Array, param2:Array) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:uint = 0;
         while(_loc3_<param1.length)
         {
            this.vybility.ricelira(param1[_loc3_]);
            _loc3_++;
         }
         return;
      }

      protected function huvetygiz(param1:Gaqyd, param2:Class) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Dictionary = this.lud[param1];
         if(_loc3_==null)
         {
            return false;
         }
         var _loc4_:Function = _loc3_[param2];
         return !(_loc4_==null);
      }

      private function lyly(param1:Class) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var commandClass:Class = param1;
         if(this.huvetygiz(this._signal,commandClass))
         {
            return;
         }
         this._signal=this.vybility.getInstance(this.wojeperi);
         this.vybility.map(this.wojeperi).pylo(this._signal);
         var signalCommandMap:Dictionary = this.lud[this._signal]=(this.lud[this._signal])||(new Dictionary(false));
         var callback:Function = new function():void
         {
            monili(_signal,arguments,commandClass,_once);
            return;
         };
         signalCommandMap[commandClass]=callback;
         this._signal.add(callback);
         return;
      }

      private function fosi(param1:Class) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Dictionary = this.lud[this._signal];
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
         GlobalNotificationActionte _loc2_[[param1]];
         return;
      }
   }

}