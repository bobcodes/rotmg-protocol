package setuv
{
[CLASS1057]

   public class Vityvu extends Object
   {
      public function Vityvu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static function make(param1:String, param2:String, param3:int=-1, param4:int=-1, param5:String="", param6:Boolean=false, param7:Object=null, param8:Boolean=false) : Vityvu {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc9_:Vityvu = new Vityvu();
         _loc9_.name=param1;
         _loc9_.text=param2;
         _loc9_.objectId=param3;
         _loc9_.numStars=param4;
         _loc9_.gisiqiwa=param5;
         _loc9_.nyjukyfyn=param6;
         _loc9_.jofytap=param8;
         _loc9_.tokens=param7==null?{}:param7;
         return _loc9_;
      }

      public var name:String;

      public var text:String;

      public var objectId:int = -1;

      public var numStars:int = -1;

      public var gisiqiwa:String = "";

      public var nyjukyfyn:Boolean;

      public var jofytap:Boolean;

      public var tokens:Object;
   }
[/CLASS]
}