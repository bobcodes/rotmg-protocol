package ren
{
   import flash.display.Loader;
   import lusesetu.Remihegi;
   import flash.display.DisplayObject;
   import lusesetu.Ferima;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;


   public class Gerybobu extends Bipes
   {
      public function Gerybobu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.loader=addChild(new Loader()) as Loader;
         super();
         return;
      }

      private var loader:Loader;

      private var begujigy:Remihegi;

      override public function get content() : DisplayObject {
         return this.loader.content;
      }

      override public function get contentLoaderInfo() : Remihegi {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.begujigy==null)
         {
            this.begujigy=new Ferima();
            this.begujigy.loaderInfo=this.loader.contentLoaderInfo;
         }
         return this.begujigy;
      }

      override public function load(param1:URLRequest, param2:LoaderContext=null) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.loader.load(param1,param2);
         return;
      }

      override public function unload() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.loader.unload();
         return;
      }
   }

}