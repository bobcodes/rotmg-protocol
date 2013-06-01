package mywyvuryw
{
[CLASS1140]   import flash.utils.IDataInput;


   public class Text extends Daqu
   {
      public function Text(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.name_=new String();
         this.text_=new String();
         this.cleanText_=new String();
         super(param1,param2);
         return;
      }

      public var name_:String;

      public var objectId_:int;

      public var numStars_:int;

      public var bubbleTime_:uint;

      public var recipient_:String;

      public var text_:String;

      public var cleanText_:String;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.name_=param1.readUTF();
         this.objectId_=param1.readInt();
         this.numStars_=param1.readInt();
         this.bubbleTime_=param1.readUnsignedByte();
         this.recipient_=param1.readUTF();
         this.text_=param1.readUTF();
         this.cleanText_=param1.readUTF();
         return;
      }

      override public function toString() : String {
         return formatToString("TEXT","name_","objectId_","numStars_","bubbleTime_","recipient_","text_","cleanText_");
      }
   }
[/CLASS]
}