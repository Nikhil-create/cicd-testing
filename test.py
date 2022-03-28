import unittest
from main import app
class FlaskTestCase(unittest.TestCase):

    def test_index(self):
        tester= app.test_client(self)
        response = tester.get('/', content_type='html/text')
        self.assertEqual(response.status_code, 200)

    def test_nikhil(self):
        tester= app.test_client(self)
        response = tester.get('/nikhil', content_type='html/text')
        self.assertEqual(response.status_code, 200)

    # def test_wrong(self):
    #     tester= app.test_client(self)
    #     response = tester.get('/wrong', content_type='html/text')
    #     self.assertEqual(response.status_code, 200)

if __name__=='__main__':
    unittest.main()
