package dabepizyb
{
   import flash.events.EventDispatcher;
   import vyso.Tokyhoqid;
   import flash.utils.Dictionary;
   import dyca.Mes;
   import vyso.Vapuz;
   import dumavap.Kowah;
   import vyso.Luvuteb;
   import donaqyzas.guardsApprove;
   import donaqyzas.applyHooks;
   import __AS3__.vec.Vector;


   public class Tecoke extends EventDispatcher implements Tokyhoqid
   {
      public function Tecoke(param1:Mes) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.vybility=param1;
         return;
      }

      private const bebyqaqe:Dictionary = new Dictionary();

      private var vybility:Mes;

      public function vudupo(param1:Object, param2:Vapuz) : Object {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return this.bebyqaqe[param1]?this.bebyqaqe[param1][param2]:null;
      }

      public function nesu(param1:Object, param2:Class, param3:Array) : Array {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc5_:Kowah = null;
         var _loc6_:Object = null;
         var _loc7_:Vapuz = null;
         var _loc4_:Array = [];
         for each (_loc7_ in param3)
         {
            _loc6_=this.vudupo(param1,_loc7_);
            if(!_loc6_)
            {
               _loc5_=_loc7_.wef;
               this.mupegahak(_loc5_,param2,param1);
               _loc6_=this.lodecudep(param1,_loc7_);
               this.wizywad(_loc5_,param2,param1);
            }
            if(_loc6_)
            {
               _loc4_.push(_loc6_);
            }
         }
         return _loc4_;
      }

      public function goci(param1:Object) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Object = null;
         var _loc2_:Dictionary = this.bebyqaqe[param1];
         if(!_loc2_)
         {
            return;
         }
         if(hasEventListener(Luvuteb.zagyhyhi))
         {
            for (_loc3_ in _loc2_)
            {
               dispatchEvent(new Luvuteb(Luvuteb.zagyhyhi,_loc2_[_loc3_],param1,_loc3_ as Vapuz,this));
            }
         }
         delete this.bebyqaqe[[param1]];
         return;
      }

      public function tajec() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Object = null;
         for (_loc1_ in this.bebyqaqe)
         {
            this.goci(_loc1_);
         }
         return;
      }

      private function lodecudep(param1:Object, param2:Vapuz) : Object {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Object = this.vudupo(param1,param2);
         if(_loc3_)
         {
            return _loc3_;
         }
         if(guardsApprove(param2.qegimabej,this.vybility))
         {
            _loc3_=this.vybility.getInstance(param2.lezybyg);
            this.vybility.map(param2.lezybyg).pylo(_loc3_);
            applyHooks(param2.dema,this.vybility);
            this.vybility.ricelira(param2.lezybyg);
            this.hokuq(_loc3_,param1,param2);
         }
         return _loc3_;
      }

      private function hokuq(param1:Object, param2:Object, param3:Vapuz) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.bebyqaqe[param2]=(this.bebyqaqe[param2])||(new Dictionary());
         this.bebyqaqe[param2][param3]=param1;
         if(hasEventListener(Luvuteb.zutok))
         {
            dispatchEvent(new Luvuteb(Luvuteb.zutok,param1,param2,param3,this));
         }
         return;
      }

      private function mupegahak(param1:Kowah, param2:Class, param3:Object) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:Class = null;
         var _loc5_:Vector.<Class> = this.wetyfe(param1,param2);
         for each (_loc4_ in _loc5_)
         {
            this.vybility.map(_loc4_).pylo(param3);
         }
         return;
      }

      private function wizywad(param1:Kowah, param2:Class, param3:Object) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:Class = null;
         var _loc5_:Vector.<Class> = this.wetyfe(param1,param2);
         for each (_loc4_ in _loc5_)
         {
            if(this.vybility.koky(_loc4_))
            {
               this.vybility.ricelira(_loc4_);
            }
         }
         return;
      }

      private function wetyfe(param1:Kowah, param2:Class) : Vector.<Class> {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Vector.<Class> = param1.rohel.concat(param1.hib);
         if(_loc3_.indexOf(param2)==-1)
         {
            _loc3_.push(param2);
         }
         return _loc3_;
      }
   }

}