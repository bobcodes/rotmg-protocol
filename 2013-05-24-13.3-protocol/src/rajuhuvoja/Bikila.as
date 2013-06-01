package rajuhuvoja
{
   import bidav.Duwuweb;
   import valatom.Nageqyned;
   import flash.utils.Dictionary;
   import bidav.Qawosir;
   import bidav.Keho;
   import vapydy.Cederoz;
   import vapydy.Huji;
   import dasygu.Lojinygad;
   import dasygu.Zanor;
   import flash.display.DisplayObject;


   public class Bikila extends Object implements Duwuweb, Nageqyned
   {
      public function Bikila(param1:Keho, param2:Qawosir=null) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this._factory=param1;
         this._handler=(param2)||(new Vufeze(this._factory));
         return;
      }

      private const nodug:Dictionary = new Dictionary();

      private var _handler:Qawosir;

      private var _factory:Keho;

      private const pyvyhuzap:Cederoz = new Byfug();

      public function mofofi(param1:Lojinygad) : Huji {
         return this.nodug[param1.wyqiziq().hehijakyz]=(this.nodug[param1.wyqiziq().hehijakyz])||(this.zarov(param1));
      }

      public function map(param1:Class) : Huji {
         var _loc2_:Lojinygad = new Zanor().allOf(param1);
         return this.mofofi(_loc2_);
      }

      public function zejepimo(param1:Lojinygad) : Cederoz {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return (this.nodug[param1.wyqiziq().hehijakyz])||(this.pyvyhuzap);
      }

      public function gukin(param1:Class) : Cederoz {
         var _loc2_:Lojinygad = new Zanor().allOf(param1);
         return this.zejepimo(_loc2_);
      }

      public function hubumiwek(param1:DisplayObject, param2:Class) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this._handler.hubumiwek(param1,param2);
         return;
      }

      public function hevimari(param1:Object) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Class = param1.constructor as Class;
         this._handler.budec(param1,_loc2_);
         return;
      }

      public function qitohewop(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this._factory.hukad(param1);
         return;
      }

      private function zarov(param1:Lojinygad, param2:Class=null) : Huji {
         return new Bavarin(param1.wyqiziq(),this._handler);
      }
   }

}