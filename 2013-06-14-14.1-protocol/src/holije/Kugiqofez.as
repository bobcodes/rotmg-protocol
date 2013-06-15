package holije
{
   import dyca.Mes;
   import flash.utils.Dictionary;


   public class Kugiqofez extends Hecatybu
   {
      public function Kugiqofez(param1:Mes, param2:Garyfajij) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param2);
         this.difas=param1;
         return;
      }

      public var difas:Mes;

      override public function apply(param1:Class, param2:Mes, param3:Dictionary) : Object {
         return provider.apply(param1,this.difas,param3);
      }
   }

}