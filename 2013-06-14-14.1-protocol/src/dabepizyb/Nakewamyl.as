package dabepizyb
{
   import vyso.Sehorof;
   import pune.Dyhaqa;
   import flash.utils.Dictionary;
   import vyso.Jez;
   import vyso.Tokyhoqid;
   import gera.Feby;
   import gera.Wezok;
   import dumavap.Lasudyd;
   import dumavap.Zevotuba;
   import flash.display.DisplayObject;


   public class Nakewamyl extends Object implements Sehorof, Dyhaqa
   {
      public function Nakewamyl(param1:Tokyhoqid, param2:Jez=null) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this._factory=param1;
         this._handler=(param2)||(new Vequnajo(this._factory));
         return;
      }

      private const zedotug:Dictionary = new Dictionary();

      private var _handler:Jez;

      private var _factory:Tokyhoqid;

      private const pozujo:Feby = new Kigepudu();

      public function dynare(param1:Lasudyd) : Wezok {
         return this.zedotug[param1.lifinil().rokafu]=(this.zedotug[param1.lifinil().rokafu])||(this.cegi(param1));
      }

      public function map(param1:Class) : Wezok {
         var _loc2_:Lasudyd = new Zevotuba().allOf(param1);
         return this.dynare(_loc2_);
      }

      public function dovetudi(param1:Lasudyd) : Feby {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return (this.zedotug[param1.lifinil().rokafu])||(this.pozujo);
      }

      public function ricelira(param1:Class) : Feby {
         var _loc2_:Lasudyd = new Zevotuba().allOf(param1);
         return this.dovetudi(_loc2_);
      }

      public function jihe(param1:DisplayObject, param2:Class) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this._handler.jihe(param1,param2);
         return;
      }

      public function nubeg(param1:Object) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Class = param1.constructor as Class;
         this._handler.zerohufom(param1,_loc2_);
         return;
      }

      public function guwyf(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this._factory.goci(param1);
         return;
      }

      private function cegi(param1:Lasudyd, param2:Class=null) : Wezok {
         return new Mawy(param1.lifinil(),this._handler);
      }
   }

}