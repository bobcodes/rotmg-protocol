package tefabezo
{
   import flash.display.Sprite;
   import flash.display.DisplayObjectContainer;
   import kipebuti.Zejimu;
   import hopi.Cilafybiz;


   public class Fipuji extends Sprite
   {
      public function Fipuji() {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         addChild(this.menu=new Quvotuz());
         addChild(this.gam=new Sprite());
         addChild(this.top=new Sprite());
         addChild(this.pohy=new Sprite());
         this.pohy.mouseEnabled=false;
         addChild(this.dialogs=new Cilafybiz());
         addChild(this.tooltips=new Zejimu());
         addChild(this.ciqocu=new Sprite());
         addChild(this.console=new Sprite());
         return;
      }

      private var menu:Quvotuz;

      public var gam:DisplayObjectContainer;

      private var tooltips:Zejimu;

      public var top:DisplayObjectContainer;

      public var pohy:DisplayObjectContainer;

      private var dialogs:Cilafybiz;

      public var ciqocu:DisplayObjectContainer;

      public var console:DisplayObjectContainer;
   }

}