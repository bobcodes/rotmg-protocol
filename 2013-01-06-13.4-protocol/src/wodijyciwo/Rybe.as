package wodijyciwo
{
[CLASS1605]   import flash.display.Sprite;
   import pudev.Capitu;
   import sowojotac.Feho;
   import totuhare.Javo;


   public class Rybe extends Sprite
   {
      public function Rybe(param1:Capitu) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vybo=new Feho();
         super();
         this.huhevuzyd(param1);
         return;
      }

      private var _textField:Capitu;

      private var vybo:Feho;

      private function huhevuzyd(param1:Capitu) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         addChild(this._textField=param1);
         return;
      }

      public function update(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this._textField.setStringBuilder(new Javo(this.vybo.lifas(param1)));
         return;
      }
   }
[/CLASS]
}