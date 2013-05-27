package cuwyg
{


   public class StatModel extends Object
   {
      public function StatModel(param1:String, param2:String, param3:String, param4:Boolean) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.name=param1;
         this.pobiniher=param2;
         this.description=param3;
         this.lagybufip=param4;
         return;
      }

      public var name:String;

      public var pobiniher:String;

      public var description:String;

      public var lagybufip:Boolean;
   }

}