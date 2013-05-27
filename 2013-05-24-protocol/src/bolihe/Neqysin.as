package bolihe
{
   import kyco.Nun;
   import flash.utils.Dictionary;


   public class Neqysin extends Dodo
   {
      public function Neqysin(param1:Nun, param2:Cuwively) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param2);
         this.cemohoqal=param1;
         return;
      }

      public var cemohoqal:Nun;

      override public function apply(param1:Class, param2:Nun, param3:Dictionary) : Object {
         return provider.apply(param1,this.cemohoqal,param3);
      }
   }

}