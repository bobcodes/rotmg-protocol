package higyva
{
   import hunavefeg.Puka;
   import ranu.Jiripusi;
   import teqazero.Qudem;
   import hunavefeg.Tilac;
   import hunavefeg.Hyne;


   public class Zolet extends Object implements Puka
   {
      public function Zolet(param1:Hyne) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.waber=param1.difas.getInstance(Jiripusi);
         this.pycu=new Qudem();
         return;
      }

      private var waber:Jiripusi;

      private var pycu:Qudem;

      public function log(param1:Object, param2:uint, param3:int, param4:String, param5:Array=null) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc6_:String = Tilac.NAME[param2]+" "+param1+" "+this.pycu.rubaw(param4,param5);
         this.waber.dispatch(_loc6_);
         return;
      }
   }

}