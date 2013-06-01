package wuhafyv
{
[CLASS1883]   import pogefeqeh.Wahovy;
   import sogi.Vydosyb;
   import fomykuq.guardsApprove;
   import fomykuq.applyHooks;


   public class Qyvakuzab extends Object
   {
      public function Qyvakuzab(param1:Wahovy) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.qod=param1;
         return;
      }

      private var qod:Wahovy;

      public function create(param1:Vydosyb) : Object {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Class = null;
         var _loc3_:Object = null;
         if(guardsApprove(param1.kudav,this.qod))
         {
            _loc2_=param1.commandClass;
            this.qod.map(_loc2_).fajuna();
            _loc3_=this.qod.getInstance(_loc2_);
            applyHooks(param1.mukig,this.qod);
            this.qod.gihacas(_loc2_);
            return _loc3_;
         }
         return null;
      }
   }
[/CLASS]
}