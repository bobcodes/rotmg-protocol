package wyzoz
{
[CLASS1108]   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;


   public class Racufy extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Racufy() {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         var _loc1_:TextField = new TextField();
         _loc1_.selectable=false;
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.size=20;
         _loc1_.defaultTextFormat=_loc2_;
         _loc1_.htmlText=qefewu;
         _loc1_.width=800;
         _loc1_.y=600/2-_loc1_.height/2;
         addChild(_loc1_);
         return;
      }

      private static const qefewu:String = "<p align=\"center\"><font color=\"#FFFFFF\">Play at: "+"<br/></font><font color=\"#7777EE\">"+"<a href=\"http://www.realmofthemadgod.com/\">"+"www.realmofthemadgod.com</font></a></p>";
   }
[/CLASS]
}