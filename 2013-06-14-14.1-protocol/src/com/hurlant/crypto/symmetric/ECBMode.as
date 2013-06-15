package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;
   import com.hurlant.util.Memory;


   public class ECBMode extends Object implements IMode, ICipher
   {
      public function ECBMode(param1:ISymmetricKey, param2:IPad=null) {
         super();
         this.key=param1;
         if(param2==null)
         {
            param2=new PKCS5(param1.getBlockSize());
         }
         else
         {
            param2.setBlockSize(param1.getBlockSize());
         }
         this.padding=param2;
         return;
      }

      private var key:ISymmetricKey;

      private var padding:IPad;

      public function getBlockSize() : uint {
         return this.key.getBlockSize();
      }

      public function encrypt(param1:ByteArray) : void {
         this.padding.pad(param1);
         param1.position=0;
         var _loc2_:uint = this.key.getBlockSize();
         var _loc3_:ByteArray = new ByteArray();
         var _loc4_:ByteArray = new ByteArray();
         var _loc5_:uint = 0;
         while(_loc5_<param1.length)
         {
            _loc3_.length=0;
            param1.readBytes(_loc3_,0,_loc2_);
            this.key.encrypt(_loc3_);
            _loc4_.writeBytes(_loc3_);
            _loc5_=_loc5_+_loc2_;
         }
         param1.length=0;
         param1.writeBytes(_loc4_);
         return;
      }

      public function decrypt(param1:ByteArray) : void {
         [OFS2]param1[/OFS].[OFS5]position[/OFS][OFS5]=[/OFS][OFS3]0[/OFS];
         var [OFS16]_loc2_:uint = [/OFS]this.[OFS8]key[/OFS].[OFS11]getBlockSize[/OFS][OFS11]([/OFS][OFS11])[/OFS];
         if([OFS17]param1[/OFS].[OFS18]length[/OFS][OFS21]%[/OFS][OFS20]_loc2_[/OFS][OFS24]!=[/OFS][OFS22]0[/OFS])
         {
            [OFS38]throw [/OFS][OFS35]new [/OFS][OFS35]Error[/OFS][OFS35]([/OFS][OFS30]"ECB mode cipher length must be a multiple of blocksize "[/OFS][OFS34]+[/OFS][OFS33]_loc2_[/OFS][OFS35])[/OFS];
         }
         else
         {
            [OFS46]_loc3_=[/OFS][OFS41]new [/OFS][OFS41]ByteArray[/OFS][OFS41]([/OFS][OFS41])[/OFS];
            [OFS54]_loc4_=[/OFS][OFS49]new [/OFS][OFS49]ByteArray[/OFS][OFS49]([/OFS][OFS49])[/OFS];
            [OFS59]_loc5_=[/OFS][OFS56]0[/OFS];
            while([OFS103]_loc5_[/OFS][OFS108]<[/OFS][OFS105]param1[/OFS].[OFS106]length[/OFS])
            {
               [OFS66]_loc3_[/OFS].[OFS69]length[/OFS][OFS69]=[/OFS][OFS67]0[/OFS];
               [OFS71]param1[/OFS].[OFS76]readBytes[/OFS][OFS76]([/OFS][OFS72]_loc3_[/OFS][OFS76],[/OFS][OFS73]0[/OFS][OFS76],[/OFS][OFS75]_loc2_[/OFS][OFS76])[/OFS];
               this.[OFS81]key[/OFS].[OFS85]decrypt[/OFS][OFS85]([/OFS][OFS84]_loc3_[/OFS][OFS85])[/OFS];
               [OFS89]_loc4_[/OFS].[OFS92]writeBytes[/OFS][OFS92]([/OFS][OFS91]_loc3_[/OFS][OFS92])[/OFS];
               [OFS101]_loc5_=[/OFS][OFS96]_loc5_[/OFS][OFS99]+[/OFS][OFS98]_loc2_[/OFS];
            }
            this.[OFS113]padding[/OFS].[OFS118]unpad[/OFS][OFS118]([/OFS][OFS116]_loc4_[/OFS][OFS118])[/OFS];
            [OFS122]param1[/OFS].[OFS125]length[/OFS][OFS125]=[/OFS][OFS123]0[/OFS];
            [OFS127]param1[/OFS].[OFS130]writeBytes[/OFS][OFS130]([/OFS][OFS128]_loc4_[/OFS][OFS130])[/OFS];
            [OFS134]return[/OFS];
         }
      }

      public function dispose() : void {
         this.key.dispose();
         this.key=null;
         this.padding=null;
         Memory.gc();
         return;
      }

      public function toString() : String {
         return this.key.toString()+"-ecb";
      }
   }

}