package vajurym
{
   import flash.utils.ByteArray;
   import flash.geom.Rectangle;


   public class Sosycijaj extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Sosycijaj(param1:String) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.interests=[];
         super();
         this.name=param1;
         return;
      }

      public static const koconeniw:uint = 1;

      public static const gymyt:uint = 2;

      public static function tusigo(param1:ByteArray) : Sosycijaj {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Sosycijaj = new Sosycijaj(param1.readUTF());
         _loc2_.type=param1.readUnsignedInt();
         _loc2_.nif=param1.readUnsignedInt();
         _loc2_.low=param1.readDouble();
         _loc2_.has=param1.readDouble();
         _loc2_.mitapeqa=param1.readBoolean();
         var _loc3_:uint = param1.readUnsignedInt();
         while(_loc3_)
         {
            _loc2_.interests.push(Pemovofe.tusigo(param1));
            _loc3_--;
         }
         return _loc2_;
      }

      public var type:uint;

      public var name:String;

      public var nytyhuri:int = 1;

      public var low:Number;

      public var has:Number;

      public var fixed:Boolean;

      public var dupahete:uint;

      public var mitapeqa:Boolean;

      public var interests:Array;

      public var rect:Rectangle;

      public var nif:int;

      public function botu(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!isNaN(param1)&&!this.fixed)
         {
            if(isNaN(this.low))
            {
               this.low=param1;
               this.has=param1;
            }
            if(param1>this.has)
            {
               this.has=param1;
            }
            if(param1<this.low)
            {
               this.low=param1;
            }
         }
         return;
      }

      public function ponevyne(param1:ByteArray) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Pemovofe = null;
         param1.writeUTF(this.name);
         param1.writeUnsignedInt(this.type);
         param1.writeUnsignedInt(this.nif);
         param1.writeDouble(this.low);
         param1.writeDouble(this.has);
         param1.writeBoolean(this.mitapeqa);
         param1.writeUnsignedInt(this.interests.length);
         for each (_loc2_ in this.interests)
         {
            _loc2_.ponevyne(param1);
         }
         return;
      }
   }

}