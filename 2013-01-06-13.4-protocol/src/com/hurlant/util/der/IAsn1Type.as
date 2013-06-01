package com.hurlant.util.der
{
[CLASS1864]   import flash.utils.ByteArray;


   public interface IAsn1Type
   {
      qulogo function getType() : uint;

      qulogo function getLength() : uint;

      qulogo function toDER() : ByteArray;
   }
[/CLASS]
}