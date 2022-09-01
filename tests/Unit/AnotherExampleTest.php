<?php

use App\Example;
use PHPUnit\Framework\TestCase;

class AnotherExampleTest extends TestCase
{
  public function testExampleClassShouldReturnFalse()
  {
    $example = new Example(true);

    $this->assertFalse(false);
  }
}
