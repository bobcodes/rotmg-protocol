package tycezudyj
{
   import kyco.Nun;
   import laho.Bolyroty;
   import jebaraqeq.guardsApprove;
   import jebaraqeq.applyHooks;


   public class Liriwuce extends Object
   {
      public function Liriwuce(param1:Nun) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.pub=param1;
         return;
      }

      private var pub:Nun;

      public function create(param1:Bolyroty) : Object {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Class = null;
         var _loc3_:Object = null;
         if(guardsApprove(param1.jagytep,this.pub))
         {
            _loc2_=param1.commandClass;
            this.pub.map(_loc2_).pybe();
            _loc3_=this.pub.getInstance(_loc2_);
            applyHooks(param1.deh,this.pub);
            this.pub.gukin(_loc2_);
            return _loc3_;
         }
         return null;
      }
   }

}