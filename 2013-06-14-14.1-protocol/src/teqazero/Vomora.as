package teqazero
{
   import hunavefeg.Puka;
   import hunavefeg.Hyne;
   import hunavefeg.Tilac;


   public class Vomora extends Object implements Puka
   {
      public function Vomora(param1:Hyne) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.qasebe=param1;
         return;
      }

      private const fus:Qudem = new Qudem();

      private var qasebe:Hyne;

      public function log(param1:Object, param2:uint, param3:int, param4:String, param5:Array=null) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         trace(param3+" "+Tilac.NAME[param2]+" "+this.qasebe+" "+param1+" - "+this.fus.rubaw(param4,param5));
         return;
      }
   }

}