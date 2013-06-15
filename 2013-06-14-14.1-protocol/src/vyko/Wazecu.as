package vyko
{
   import dyca.Mes;
   import qypajun.Gaz;
   import donaqyzas.guardsApprove;
   import donaqyzas.applyHooks;


   public class Wazecu extends Object
   {
      public function Wazecu(param1:Mes) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.vybility=param1;
         return;
      }

      private var vybility:Mes;

      public function create(param1:Gaz) : Object {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Class = null;
         var _loc3_:Object = null;
         if(guardsApprove(param1.qegimabej,this.vybility))
         {
            _loc2_=param1.commandClass;
            this.vybility.map(_loc2_).fezy();
            _loc3_=this.vybility.getInstance(_loc2_);
            applyHooks(param1.dema,this.vybility);
            this.vybility.ricelira(_loc2_);
            return _loc3_;
         }
         return null;
      }
   }

}